@echo off

setlocal
set "destinationPath=C:\Users\Public\Desktop"
set "iconPath=C:\IT\imagename.ico"

rem creating shorcut

echo Set objShell = CreateObject("WScript.Shell") > CreateShortcut.vbs
echo strDesktop = "%destinationPath%" >> CreateShortcut.vbs
echo Set objShortcut = objShell.CreateShortcut(strDesktop ^& "\InsertNameHere.lnk") >> CreateShortcut.vbs
echo objShortcut.TargetPath = "https://sitename.com/" >> CreateShortcut.vbs
echo objShortcut.IconLocation = "%iconPath%" >> CreateShortcut.vbs
echo objShortcut.Save >> CreateShortcut.vbs

rem VBS For shorcut
cscript CreateShortcut.vbs
rem del vbs
del CreateShortcut.vbs
echo it works
pause
