using DudeLib ;

class Program
{
    static void Main(string[] args)
    {
        
        DudeLib.Device device = new DudeLib.Device();
        
        
        var devices = device.SearchDevices();
        
       
        if (devices.Length > 0)
        {
            foreach (var dev in devices)
            {
                Console.WriteLine($"Device found: {dev.Name}, Port: {dev.Port}");
                
                
                UpdateXmlWithComPort(dev.Port);
            }
        }
        else
        {
            Console.WriteLine("No DATECS devices found.");
        }
    }

    // Function to update the XML file with the correct port
    static void UpdateXmlWithComPort(string comPort)
    {
        // DE FACUT XML
        // 
    }
}
