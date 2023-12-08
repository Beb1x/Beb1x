@echo off
echo Program started

:: Check if running as administrator
NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as an administrator.
    pause
    exit /b 1
)

:: Run sfc /scannow
echo Running sfc /scannow...
sfc /scannow

:: Pause for 3 seconds
timeout /t 3 >nul

:: Run DISM /Online /Cleanup-Image /RestoreHealth
echo Running DISM /Online /Cleanup-Image /RestoreHealth...
DISM /Online /Cleanup-Image /RestoreHealth

:: Pause for 3 seconds
timeout /t 3 >nul

:: Run wsreset.exe
echo Running wsreset.exe...
wsreset.exe

:: Pause for 3 seconds
timeout /t 3 >nul

:: Register DLLs
echo Registering DLLs...
for %%i in (%windir%\system32\*.dll) do regsvr32.exe /s %%i

:: Pause for 3 seconds
timeout /t 3 >nul

:: Install .NET Framework 3.5
echo Installing .NET Framework 3.5...
DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess

:: Pause for 3 seconds
timeout /t 3 >nul

:: Install .NET Framework 4.8
echo Installing .NET Framework 4.8...
DISM /Online /Enable-Feature /FeatureName:NetFx4 /All /LimitAccess

:: Pause for 3 seconds
timeout /t 3 >nul

echo Operation completed
pause
