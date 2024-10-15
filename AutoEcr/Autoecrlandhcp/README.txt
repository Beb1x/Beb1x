Author: Gorreta Alessandro
GitHub: Beb1x

Overview
This repository contains two PowerShell scripts that automate network checks and restart processes for DATECS Electronic Cash Registers (ECR). The scripts are written in Romanian and can be translated if necessary. Both scripts log their actions and are designed to update configuration files and ensure the correct IP address for the ECR is used.
1) AutoEcrLan For EXE with logs.ps1
Description:
This script automates the process of checking the network for a DATECS ECR device by identifying it through its MAC address. It logs the process, updates an XML configuration file with the correct IP address, and restarts a fiscal program EXE if necessary.

How it works:
Logging Setup:

The script defines a custom Write-Log function that writes messages to a log file with timestamps (YOURLOG.txt).
Network Check:

The script runs an arp -a | findstr command to search for the ECR device by its MAC address (68-AA-D2 68:AA:D2).
If the device is not found, the script logs this and exits.
Extracting the IP Address:

If the MAC address is found, the script extracts the IP address using a regular expression and logs it.
Updating the Configuration File:

The script then loads the XML configuration file (CONFIG.config) and updates the FiscalDeviceIPAddress setting with the newly found IP address.
If the setting is not found in the XML, the script logs an error and exits.
Process Management:

The script checks if a specific fiscal program (YOURFISCALPROGRAM) is running.
If the program is running, the script closes it and restarts it to apply the new settings.
If the program is not running, the script simply starts it.
Logging the Results:

Every step is logged, and the script finishes by logging the completion.
Key Features:
Custom Logging: Uses a function to log each step with a timestamp.
XML Configuration Handling: Updates the configuration file for the fiscal device.
EXE Restart: Restarts the fiscal program to apply updated IP settings.



2) AutoEcrLan only script with logs.ps1
Description:
This script performs a similar network check and process restart but is simpler than the first. It uses PowerShell’s built-in transcript logging and does not directly restart an EXE application. It is intended for managing ECR connections and updating configuration files without handling the lifecycle of an executable.

How it works:
Logging Setup with Transcript:

Instead of a custom log function, this script uses Start-Transcript to capture all output in a log file (LOG.txt).
Network Check:

Similar to the first script, it searches for the ECR device using its MAC address via the arp -a | findstr command.
If the device is not found, the script logs the failure and exits.
Extracting the IP Address:

If the device is found, the IP address is extracted and logged.
Updating the Configuration File:

The script updates the FiscalDeviceIPAddress in the XML configuration file (Exe.config) with the new IP address.
If the setting is not found, the script logs an error and exits.
Process Management:

It checks if a process named YOURPROGRAMNAME is running.
If the process is running, the script stops and restarts it to apply the new settings.
If the process is not running, it starts the GUI for the fiscal program (FISCALDEVICEPROGRAMGUI.exe).
Stopping the Transcript:

The script ends the logging process with Stop-Transcript.
Key Features:
Simplified Logging: Uses PowerShell’s Start-Transcript for logging.
XML Configuration Handling: Updates the IP address in the configuration file.
Process Restart: Restarts the fiscal program to apply changes.

Key Differences Between the Scripts
Logging Mechanism:

AutoEcrLan For EXE with logs.ps1: Uses a custom Write-Log function for detailed, timestamped logging.
AutoEcrLan only script with logs.ps1: Relies on PowerShell’s Start-Transcript to capture all output.
EXE Handling:

AutoEcrLan For EXE with logs.ps1: Manages the lifecycle of a fiscal program EXE, ensuring it restarts after updating the IP configuration.
AutoEcrLan only script with logs.ps1: Does not directly manage an EXE but starts a GUI program if necessary.
Complexity:

AutoEcrLan For EXE with logs.ps1: More complex due to the custom logging function and EXE handling.
AutoEcrLan only script with logs.ps1: Simpler, using built-in logging and focusing on basic network checks and process management.
Usage
AutoEcrLan For EXE with logs.ps1: Use this script if you need to manage the lifecycle of a specific EXE (fiscal program) related to the DATECS ECR device. It logs every step in detail and ensures that updated IP settings are applied by restarting the program.

AutoEcrLan only script with logs.ps1: Use this if you need a simpler script to perform basic network checks, update the ECR’s IP in the configuration, and restart the fiscal program without managing an EXE application directly.

Prerequisites
PowerShell 5.0 or higher: Both scripts require PowerShell.
Administrative privileges: May be required to stop and start processes or modify configuration files.
Network access: Ensure proper network access and permissions to communicate with the ECR device.
This README.txt provides an explanation of how each script works, their differences, and the conditions for their use. Make sure to adjust paths (C:\PATH\TO\...) and process names (YOURFISCALPROGRAM, YOURPROGRAMNAME) according to your specific environment.