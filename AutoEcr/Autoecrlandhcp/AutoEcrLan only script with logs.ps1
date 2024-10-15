# Author: Gorreta Alessandro
# GitHub: https://github.com/Beb1x/Beb1x
# Description: This script automates network checks and process restarts for DATECS ECR.
# SCRIPT VERSION PS1

$logFile = "C:\PATHTO\YOUR\logs\LOG.txt"
Start-Transcript -Path $logFile -Append
$arpResult = arp -a | findstr /I "68-AA-D2 68:AA:D2"
Write-Output "ARP Result: $arpResult"

if ([string]::IsNullOrWhiteSpace($arpResult)) {
    Write-Output "MAC 68-AA-D2 68:AA:D2 - DATECS Casa de marca nu se vede in retea. Verifica sa fie pusa in aceiasi retea cu statiile / serverul de pe care si sa fie pornita."
    Stop-Transcript
    exit
}
$ipAddressMatch = [regex]::Match($arpResult, '(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})')
if ($ipAddressMatch.Success) {
    $ipAddress = $ipAddressMatch.Value
} else {
    Write-Output "Nu am reusit sa extrag IPv4 Casei de marcat."
    Stop-Transcript
    exit
}
$configFile = "C:\PATHTO\YOUR\Exe.config"
[xml]$configXML = Get-Content $configFile
$fiscalSetting = $configXML.SelectSingleNode("//setting[@name='FiscalDeviceIPAddress']/value")

if ($fiscalSetting -ne $null) {
    $fiscalSetting.'#text' = $ipAddress
} else {
    Write-Output "Nu gasesc FiscalDeviceIPAddress in XML $configFile. Verifica fisierul config."
    Stop-Transcript
    exit
}
$configXML.Save($configFile)

Write-Output "Salut, am pus IP: $ipAddress Casei de marcat in $configFile."

$processName = "YOURPROGRAMNAME"
$process = Get-Process -Name $processName -ErrorAction SilentlyContinue
if ($process) {
    Write-Output "$processName este deschis, ca sa mearga setarile noi, il voi inchide si redeschide"
    Stop-Process -Name $processName -Force
    Write-Output "$processName lam inchis, il redeschid in cateva momente"
} else {
    Write-Output "$processName este inchis, il deschid imediat"
}
Start-Process "C:\PATH\TO\FISCALDEVICEPROGRAMGUI.exe"
Write-Output "deschid $processName."

Stop-Transcript