using System;
using System.Text.RegularExpressions;
class SmartCardReaderDriver //i forgot about this project , will get back on it soon
{
    private string deviceName;
    private int driverVersion = 2014;
    private bool driverInstalled = false;
    public SmartCardReaderDriver(string deviceName)
    {
        this.deviceName = deviceName;
    }
    public void InstallDriver()
    {
        if (IsSupportedDevice())
        {
            if (!driverInstalled)
            {
                driverInstalled = true;
                Console.WriteLine($"Installed driver for {deviceName} (Version {driverVersion}).");
            }
            else
            {
                Console.WriteLine($"Driver for {deviceName} is already installed (Version {driverVersion}).");
            }
        }
        else
        {
            Console.WriteLine($"{deviceName} is not a supported device.");
        }
    }
    public bool IsSupportedDevice()
    {
        string[] supportedPatterns = { "Omnikey", "ACS", "ACR", "ACS - ACR" };
        foreach (var pattern in supportedPatterns)
        {
            string regexPattern = WildcardToRegex(pattern);
            if (Regex.IsMatch(deviceName, regexPattern, RegexOptions.IgnoreCase))
            {
                return true;
            }
        }
        return false;
    }
    private string WildcardToRegex(string pattern)
    {
        string regexPattern = Regex.Escape(pattern);
        regexPattern = regexPattern.Replace(@"\*", ".*");
        regexPattern = regexPattern.Replace(@"\?", ".");
        return $"^{regexPattern}$";
    }
    public void CheckDriverStatus()
    {
        if (driverInstalled)
        {
            Console.WriteLine($"Driver for {deviceName} (Version {driverVersion}) is installed and ready to use.");
        }
        else
        {
            Console.WriteLine($"Driver for {deviceName} (Version {driverVersion}) is not installed.");
        }
    }
    public void UninstallDriver()
    {
        if (driverInstalled)
        {
            driverInstalled = false;
            Console.WriteLine($"Uninstalled driver for {deviceName} (Version {driverVersion}).");
        }
        else
        {
            Console.WriteLine($"Driver for {deviceName} (Version {driverVersion}) is not installed, so no need to uninstall.");
        }
    }
}
class Program
{
    static void Main()
    {
        string[] devices = { "Omnikey 2014", "ACS 2014", "ACR 2015", "ACS - ACR 2014" };

        foreach (string deviceName in devices)
        {
            SmartCardReaderDriver reader = new SmartCardReaderDriver(deviceName);
            reader.CheckDriverStatus();
            reader.InstallDriver();
            reader.CheckDriverStatus();
            reader.UninstallDriver();
            reader.CheckDriverStatus();
        }
    }
}
