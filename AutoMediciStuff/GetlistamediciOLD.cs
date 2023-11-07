using System;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using System.Configuration;
using System.IO.Compression;

class Program
{
    static void Main(string[] args)
    {
        var config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
        config.AppSettings.File = "C:\\IT\\ConfigMedici.ini";
        var base_url = "http://www.casan.ro/cjasvs/page/nomenclatoare.html";
        var file_pattern = @"NomenclatoareFarmacii_\d{8}.xml.zip";
        WebClient client = new WebClient();
        string responseText = client.DownloadString(base_url);
        if (responseText != null)
        {
            var fileNames = new Regex(file_pattern).Matches(responseText);
            if (fileNames.Count > 0)
            {
                foreach (var key in config.AppSettings.Settings.AllKeys)
                {
                    if (key.StartsWith("path"))
                    {
                        var downloadPath = config.AppSettings.Settings[key].Value;
                        foreach (Match fileName in fileNames)
                        {
                            var fullFileName = fileName.Value;
                            var filePath = Path.Combine(downloadPath, fullFileName);
                            if (!File.Exists(filePath))
                            {
                                var fileUrl = $"http://www.casan.ro/cjasvs/media/pageFiles/{fullFileName}";
                                client.DownloadFile(fileUrl, filePath);
                                using (ZipArchive archive = ZipFile.OpenRead(filePath))
                                {
                                    foreach (ZipArchiveEntry entry in archive.Entries)
                                    {
                                        var entryPath = Path.Combine(downloadPath, entry.FullName);
                                        entry.ExtractToFile(entryPath, true);
                                    }
                                }
                                File.Delete(filePath);
                                Console.WriteLine($"Downloaded and extracted {fullFileName} to {downloadPath}");
                            }
                            else
                            {
                                Console.WriteLine($"Skipped {fullFileName} because it already exists in {downloadPath}");
                            }
                        }
                    }
                }
            }
            else
            {
                Console.WriteLine("No matching file name found on the website");
            }
        }
        else
        {
            Console.WriteLine("Failed to access the website");
        }
        System.Threading.Thread.Sleep(5000);
    }
}
