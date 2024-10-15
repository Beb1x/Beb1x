# Author: Gorreta Alessandro
# GitHub: https://github.com/Beb1x/Beb1x
# Description: This script automates network checks and process restarts for DATECS ECR.
# SCRIPT FOR EXE
# Written in romanian language, if you want you can translate it

$logFile = "C:\PATH\TO\logs\YOURLOG.txt"
function Write-Log {
    param (
        [string]$message
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logFile -Value "$timestamp - $message"
}

# Log start of the script
Write-Log "Incepe verificarea"

$arpResult = arp -a | findstr /I "68-AA-D2 68:AA:D2"
Write-Log "ARP Result: $arpResult"

if ([string]::IsNullOrWhiteSpace($arpResult)) {
    Write-Log "MAC 68-AA-D2 68:AA:D2 - DATECS Casa de marca nu se vede in retea. Verifica sa fie pusa in aceiasi retea cu statiile / serverul de pe care si sa fie pornita."
    exit
}

$ipAddressMatch = [regex]::Match($arpResult, '(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})')
if ($ipAddressMatch.Success) {
    $ipAddress = $ipAddressMatch.Value
    Write-Log "IP casa de marcat gasit: $ipAddress"
} else {
    Write-Log "Nu am reusit sa extrag IPv4 Casei de marcat."
    exit
}
# XML BROTHER!
$configFile = "C:\PATH\TO\CONFIG.config"
[xml]$configXML = Get-Content $configFile
$fiscalSetting = $configXML.SelectSingleNode("//setting[@name='FiscalDeviceIPAddress']/value")

if ($fiscalSetting -ne $null) {
    $fiscalSetting.'#text' = $ipAddress
    $configXML.Save($configFile)
    Write-Log "Am actualizat FiscalDeviceIPAddress cu ipul: $ipAddress in $configFile"
} else {
    Write-Log "Nu gasesc FiscalDeviceIPAddress in XML $configFile. Verifica fisierul config."
    exit
}

$processName = "YOURFISCALPROGRAM"
$process = Get-Process -Name $processName -ErrorAction SilentlyContinue
if ($process) {
    Write-Log "$processName este deschis, ca sa mearga setarile noi, il voi inchide si redeschide"
    Stop-Process -Name $processName -Force
    Write-Log "$processName lam inchis, il redeschid in cateva momente"
} else {
    Write-Log "$processName este inchis, il deschid imediat"
}

Start-Process "C:\PATH\TO\YOURFISCALPROGRAM.exe"
Write-Log "Deschid $processName."

Write-Log "ZZZZZZZZZZZZZZ"
