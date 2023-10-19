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
        try
        {
            var config = ConfigurationManager.AppSettings;
            var base_url = config["BaseUrl"];
            var file_pattern = config["FilePattern"];

            using (WebClient client = new WebClient())
            {
                string responseText = client.DownloadString(base_url);
                if (responseText != null)
                {
                    var fileNames = new Regex(file_pattern).Matches(responseText);
                    if (fileNames.Count > 0)
                    {
                        foreach (var key in config.AllKeys)
                        {
                            if (key.StartsWith("path"))
                            {
                                var downloadPath = config[key];
                                foreach (Match fileName in fileNames)
                                {
                                    var fullFileName = fileName.Value;
                                    var filePath = Path.Combine(downloadPath, fullFileName);
                                    if (!File.Exists(filePath))
                                    {
                                        var fileUrl = $"{config["FileUrlBase"]}/{fullFileName}";
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
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"An error occurred: {ex.Message}");
        }
    }
}
