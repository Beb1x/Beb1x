import os
import getpass
import subprocess
import paramiko
import winreg
import winrm
from base64 import b64encode

# Define the username and password
username = "your_username"
password = "your_password"
# this i will make it an full on aplication
# Function to detect certificates in the program's folder
def detect_certificates():
    script_dir = os.path.dirname(os.path.realpath(__file__))
    certificates = [file for file in os.listdir(script_dir) if file.endswith(".crt")]
    return certificates

# Function to prompt for and store certificate passwords
def get_certificate_passwords(certificates):
    certificate_passwords = {}
    for certificate in certificates:
        password = getpass.getpass(f"Enter password for {certificate}: ")
        certificate_passwords[certificate] = password
    return certificate_passwords

# Function to install certificates to specific local paths
def install_certificates_locally(certificates, passwords):
    for certificate in certificates:
        password = passwords.get(certificate)
        if password:
            # Import the certificate to local paths
            subprocess.run(['certutil', '-f', '-p', password, '-importpfx', certificate])

# Function to enable Internet Options settings
def set_internet_options_settings():
    try:
        # Create a registry key to access Internet Options
        key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Software\Microsoft\Windows\CurrentVersion\Internet Settings", 0, winreg.KEY_WRITE)

        # Enable SSL 3.0
        winreg.SetValueEx(key, "SecureProtocols", 0, winreg.REG_DWORD, 0x000000008)

        # Enable Check for server certificate revocation
        winreg.SetValueEx(key, "CertificateRevocation", 0, winreg.REG_DWORD, 0x000000001)

        # Enable Check for signatures on downloaded programs
        winreg.SetValueEx(key, "CheckExeSignatures", 0, winreg.REG_DWORD, 0x000000001)

        # Uncheck publisher's certification revocation
        winreg.SetValueEx(key, "CertCheckMode", 0, winreg.REG_DWORD, 0x000000001)

        winreg.CloseKey(key)
    except Exception as e:
        with open("Logs.txt", 'a') as log:
            log.write(f"Failed to modify Internet Options settings: {str(e)}\n")

# Function to run batch script remotely on target PCs using pywinrm
def run_batch_script_remotely(target_pc, script_path):
    session = winrm.Session(
        target_pc,
        auth=(username, password),
        server_cert_validation='ignore' 
    )

    encoded_ps = f"$encoded = [System.Text.Encoding]::UTF8.GetBytes(@'{script_path}'); " \
                f"[System.Text.Encoding]::UTF8.GetString($encoded)"

    ps_script = f"$command = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded)); " \
                f"Invoke-Expression $command"
    
    encoded_ps_script = ps_script.encode('utf-8')
    ps_script_encoded = b"".join([b"[char](", b",".join(str(x).encode('utf-8') for x in encoded_ps_script), b")"])
    
    encoded_ps_script_base64 = b''
    for i in range(0, len(ps_script_encoded), 6000):
        encoded_ps_script_base64 += f"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('{b64encode(ps_script_encoded[i:i + 6000]).decode('utf-8')}')); ".encode('utf-8')

    ps_script_base64 = f"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('{b64encode(encoded_ps_script_base64).decode('utf-8')}')); " \
                      f"Invoke-Expression $command"

    encoded_ps_script_base64 = ps_script_base64.encode('utf-8')

    encoded_ps_script_base64 = b""
    for i in range(0, len(ps_script_encoded), 6000):
        encoded_ps_script_base64 += f"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('{b64encode(ps_script_encoded[i:i + 6000]).decode('utf-8')}')); ".encode('utf-8')

    encoded_ps_script_base64 = encoded_ps_script_base64.decode('utf-8')
    response = session.run_ps(encoded)
#ITS WORK IN PROGRESS SO BARE WITH ME OK ?
