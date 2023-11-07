using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

public class ZekaRestart
{
    private const string DefaultPath = @"C:\Program Files (x86)\ZFPRServer";
    private const string ServiceName = "DataKlasAgentSrv";
    private const string DeviceName = "STMicroelectronics Virtual COM Port";
    private const string KillAndStartBatchContent = @"
@echo off
taskkill /IM "ZFPRServer.exe" /F
TIMEOUT /T 4 /NOBREAK
start "" "C:\Program Files (x86)\ZFPRServer\ZFPRServer.exe"
net start DataKlasAgentSrv
";

    public static void Main(string[] args)
    {
        CheckServiceRunning(ServiceName);

        ListComPorts();
        string comPort = GetComPort(DeviceName);

        TerminateProcessesInFolder(DefaultPath);

        Open(Path.Combine(DefaultPath, "ZFPRServer.ini"));

        if (comPort != null)
        {
            ConfigParser config = new ConfigParser();

            if (File.Exists(Path.Combine(DefaultPath, "ZFPRServer.ini")))
            {
                config.Read(Path.Combine(DefaultPath, "ZFPRServer.ini"));
                RemoveSectionsWithKeywords(config, new string[] { "STMicroelectronics", "Virtual", "COM", "Port" });
                WriteConfigToIni(config, comPort);
            }
            else
            {
                Console.WriteLine("Nu gasesc ZFPRServer.ini");
            }
        }
        else
        {
            Console.WriteLine("Nu gasesc COM port");
        }

        Process.Start(Path.Combine(DefaultPath, "ZFPRServer.exe"));

        RestartApplicationAndStartService(DefaultPath, ServiceName);
    }

    private static void CheckServiceRunning(string serviceName)
    {
        if (ServiceController.GetServices().Where(s => s.ServiceName == serviceName).FirstOrDefault()?.Status != ServiceControllerStatus.Running)
        {
            Console.WriteLine("Dataklas agent is not running as a service.");
            Environment.Exit(1);
        }
    }

    private static void ListComPorts()
    {
        foreach (var port in SerialPort.GetPortNames())
        {
            Console.WriteLine($"Port: {port}");
        }
    }

    private static string GetComPort(string deviceName)
    {
        ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT DeviceID FROM Win32_SerialPort WHERE Name LIKE '%" + deviceName + "%'");
        var results = searcher.Get().Cast<ManagementObject>();

        foreach (var result in results)
        {
            string deviceId = result["DeviceID"].ToString();

            if (deviceId.Contains("COM"))
            {
                return deviceId.Substring(deviceId.IndexOf("COM"));
            }
        }

        return null;
    }

    private static void RemoveSectionsWithKeywords(ConfigParser config, string[] keywords)
    {
        foreach (string section in config.Sections)
        {
            if (keywords.Any(keyword => section.Contains(keyword)))
            {
                config.RemoveSection(section);
            }
        }
    }

    private static void WriteConfigToIni(ConfigParser config, string comPort)
    {
        string sectionName = $"COM{comPort}";

        if (!config.HasSection(sectionName))
        {
            config.AddSection(sectionName);
            config.Set(sectionName, "path", r"C:\Bonuri");
        }

        using (StreamWriter writer = new StreamWriter(Path.Combine(DefaultPath, "ZFPRServer.ini")))
        {
            config.Write(writer);
        }
    }

    private static void TerminateProcessesInFolder(string path)
    {
        foreach (Process process in Process.GetProcesses())
        {
            if (process.ProcessName == "ZFPRServer")
            {
                process.Kill();
            }
        }
    }

    private static void RestartApplicationAndStartService(string path, string serviceName)
    {
        Process.Start(Path.Combine(path, "ZFPRServer.exe"));

        if (ServiceController.GetServices().Where(s => s.ServiceName == serviceName).FirstOrDefault()?.Status !=
