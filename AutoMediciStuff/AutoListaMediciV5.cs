using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;
using System.IO.Compression;

namespace NomenclatoareFarmaciiDownloader
{
    class Program
    {
        private static readonly string BaseUrl = "http://www.casan.ro/cjasvs/page/nomenclatoare.html";
        private static readonly string FilePattern = @"NomenclatoareFarmacii_\d{8}.xml.zip";
        private static readonly string ConfigFilePath = "C:\\IT\\AutoMedic\\ConfigMedici.ini";

        static async Task Main(string[] args)
        {
            var logHandler = new TimedRotatingFileHandler(Path.Join("C:\\IT\\AutoMedic\\logs", "script.log"), when: "D", interval: 1, backupCount: 30);
            logHandler.SetFormatter(new Formatter("%(asctime)s - %(levelname)s - %(message)s"));
            var logger = new Logger(logHandler);
            var config = new ConfigParser();
            config.Read(ConfigFilePath);
            var downloadPaths = config.GetSection("Settings")
                .Where(key => key.StartsWith("path"))
                .Select(key => config["Settings"][key]);
            var response = await new WebClient().DownloadDataTaskAsync(BaseUrl);
            var htmlContent = System.Text.Encoding.UTF8.GetString(response);
            var fileNames = Regex.Matches(htmlContent, FilePattern).Cast<Match>().Select(match => match.Value);

            if (fileNames.Any())
            {
                foreach (var fileName in fileNames)
                {
                    var fileUrl = $"{BaseUrl}/media/pageFiles/{fileName}";
                    var downloadPath = downloadPaths.FirstOrDefault(path => Directory.Exists(path));
                    if (downloadPath == null)
                    {
                        logger.Error($"No download path found for file {fileName}");
                        continue;
                    }
                    var filePath = Path.Join(downloadPath, fileName);
                    if (File.Exists(filePath))
                    {
                        logger.Info($"Skipped {fileName} because it already exists in {downloadPath}");
                        continue;
                    }
                    logger.Info($"Downloading {fileName} to {downloadPath}");
                    var fileResponse = await new WebClient().DownloadDataTaskAsync(fileUrl);
                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        fileStream.Write(fileResponse, 0, fileResponse.Length);
                    }
                    logger.Info($"Extracting {fileName} to {downloadPath}");
                    using (var zipArchive = ZipFile.OpenRead(filePath))
                    {
                        zipArchive.ExtractToDirectory(downloadPath);
                    }
                    logger.Info($"Deleting {fileName}");
                    File.Delete(filePath);
                }
            }
            else
            {
                logger.Info("No matching file name found on the website");
            }
            Thread.Sleep(5000);
        }
    }
}
