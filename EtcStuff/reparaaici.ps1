function Write-LogEvent {
    param(
        [string]$logName,
        [string]$source,
        [string]$message,
        [System.Diagnostics.EventLogEntryType]$entryType
    )

    # Check if the log exists, and create it if not
    if (-not (Get-EventLog -LogName $logName -ErrorAction SilentlyContinue)) {
        New-EventLog -LogName $logName -Source $source
    }

    # Check if the source exists, and create it if not
    if (-not ([System.Diagnostics.EventLog]::SourceExists($source))) {
        New-EventLog -LogName $logName -Source $source
    }

    Write-EventLog -LogName $logName -Source $source -EntryType $entryType -EventId 420 -Message $message
}


function Test-Administrator {
    $user = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator
    return $user.IsInRole($adminRole)
}

# Log program started
Write-LogEvent -logName "Application" -source "ScriptFoarteSigurAlexG" -message "Program started" -entryType Information

if (-not (Test-Administrator)) {
    Write-LogEvent -logName "Application" -source "ScriptFoarteSigurAlexG" -message "Please run as administrator" -entryType Warning
    [System.Windows.Forms.MessageBox]::Show("Please run this script as an administrator.", "Administrator Required", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
    exit
}

function Invoke-SilentCommand {
    param(
        [string]$Command
    )
    try {
        $psi = New-Object System.Diagnostics.ProcessStartInfo
        $psi.FileName = "cmd.exe"
        $psi.Arguments = "/c $Command"
        $psi.RedirectStandardError = $true
        $psi.RedirectStandardOutput = $true
        $psi.UseShellExecute = $false
        $psi.CreateNoWindow = $true
        $process = New-Object System.Diagnostics.Process
        $process.StartInfo = $psi
        $process.Start() | Out-Null
        $process.WaitForExit()
        $stdout = $process.StandardOutput.ReadToEnd()
        $stderr = $process.StandardError.ReadToEnd()
        $exitCode = $process.ExitCode
        $process.Dispose()
        if ($exitCode -ne 0 -or $stderr) {
            Write-LogEvent -logName "Application" -source "ScriptFoarteSigurAlexG" -message "Error executing command: $Command`nExit Code: $exitCode`nError Output: $stderr" -entryType Error
        }
        return @{
            ExitCode = $exitCode
            StdOut   = $stdout
            StdErr   = $stderr
        }
    }
    catch {
        Write-LogEvent -logName "Application" -source "ScriptFoarteSigurAlexG" -message "Error executing command: $Command`nException: $_" -entryType Error
        throw $_
    }
}

Invoke-SilentCommand "sfc /scannow"
Start-Sleep -Seconds 3

Invoke-SilentCommand "DISM /Online /Cleanup-Image /RestoreHealth"
Start-Sleep -Seconds 3

Invoke-SilentCommand "wsreset.exe"
Start-Sleep -Seconds 3

$dllFiles = Get-ChildItem "$($env:SystemRoot)\system32\*.dll"
foreach ($dll in $dllFiles) {
    Invoke-SilentCommand "regsvr32.exe /s $($dll.FullName)"
    Start-Sleep -Seconds 3
}

Invoke-SilentCommand "DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess"
Start-Sleep -Seconds 3

Invoke-SilentCommand "DISM /Online /Enable-Feature /FeatureName:NetFx4 /All /LimitAccess"

# Log a success event
Write-LogEvent -logName "Application" -source "ScriptFoarteSigurAlexG" -message "Script executed successfully" -entryType Information

Start-Sleep -Seconds 3
[System.Windows.Forms.MessageBox]::Show("Operation Completed", "Status", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
