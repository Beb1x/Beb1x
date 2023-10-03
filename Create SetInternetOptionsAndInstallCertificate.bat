@echo off

REM open a new cmd as admin
start cmd /k ""%comspec%" /c "

REM Install certificate with password

certutil -f -user -p "PASSWORD1234" -importpfx "C:\PATHTO\MyCertificate.pfx"
certutil -f -user -p "PASSWORD1234" -importpfx "C:\PATH\TO\MyCertificate.pfx"

REM Set the Internet Options
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Protocols\SSL 3.0" /v Enabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Protocols\TLS 1.0" /v Enabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Protocols\TLS 1.1" /v Enabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Protocols\TLS 1.2" /v Enabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Protocols\TLS 1.3" /v Enabled /t REG_DWORD /d 1 /f

REM Disable the following warnings
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnIfChangingBetweenSecureAndNotSecureMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnAboutCertificateAddressMismatch /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnIfPostSubmittalIsRedirectedToAZoneThatDoesNotPermitPosts /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Security\Cryptography\CertificateRevocation" /v CheckForPublishersCertificateRevocation /t REG_DWORD /d 0 /f

REM Exit the command prompt instance
exit /b
