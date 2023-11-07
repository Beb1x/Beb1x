@echo off 

set "executablePath=C:\IT\NameProgram.exe"

REM Create a shortcut to the executable file 

set "shortcutPath=C:\IT\NameProgram.lnk" 

set "startupFolder=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" 

set "startupFolderPath=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" 

if exist "%startupFolderPath%\Program you want to del" (
    del "%startupFolderPath%\Program you want to del"
) 
if exist "%startupFolderPath%\Program you want to delv2" (
    del "%startupFolderPath%\Program you want to delv2"
) 
 
REM Create the shortcut using PowerShell 

powershell -Command "$shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut('%shortcutPath%'); $shortcut.TargetPath = '%executablePath%'; $shortcut.Save()" 

REM Move the shortcut to the common shell startup folder 

move "%shortcutPath%" "%startupFolder%\" 

REM Grant necessary permissions for the shortcut to apply to all users 

icacls "%startupFolderPath%\NameProgram.lnk" /grant Users:F /t

set "folder=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup"
set "filenames=NameProgram1 NameProgram2 NameProgram3"
cd /d "%folder%"
for %%i in (%filenames%) do (
    del /S /F /Q "%%~i.*" > nul 2>&1
)
