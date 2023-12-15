from ftplib import FTP
import os
import shutil
import configparser
import datetime
import logging

RAR_PATTERN = "AOPSNAJ_"
FTP_HOST = "2qrwq"
FTP_USERNAME = "zzzz"
FTP_PASSWORD = "zzz"
LOG_FILE = "C:\\IT\\AutoMedic\\logs\\script.log.txt"

logging.basicConfig(filename=LOG_FILE, level=logging.DEBUG)

def log_error(message):
    timestamp = datetime.datetime.now().strftime("[%Y-%m-%d %H:%M:%S]")
    logging.error(f"{timestamp} {message}")

def log_ftp_message(message):
    timestamp = datetime.datetime.now().strftime("[%Y-%m-%d %H:%M:%S]")
    logging.info(f"{timestamp} FTP: {message}")

def download_from_ftp(ftp_host, ftp_username, ftp_password, remote_path, local_path, filename):
    try:
        with FTP(ftp_host) as ftp:
            ftp.login(ftp_username, ftp_password)
            ftp.cwd(remote_path)
            with open(os.path.join(local_path, filename), 'wb') as local_file:
                ftp.retrbinary('RETR ' + filename, local_file.write)
        return True
    except Exception as e:
        log_error(f"Error downloading {filename} from FTP: {e}")
        return False

def extract_rar_file(rar_file, extract_path):
    try:
        shutil.unpack_archive(rar_file, extract_path, 'rar')
        return True
    except Exception as e:
        log_error(f"Error extracting {rar_file}: {e}")
        return False

def main():
    config_file_path = "C:\\IT\\AutoMedic\\ConfigMedici.ini"
    config = configparser.ConfigParser()
    config.read(config_file_path)

    for key in config["Settings"]:
        path = config["Settings"][key]
        rar_file = f"{RAR_PATTERN}NomenclatoareFarmacii_{datetime.datetime.now().strftime('%Y%m%d')}.rar"
        full_rar_path = os.path.join(path, rar_file)

        if download_from_ftp(FTP_HOST, FTP_USERNAME, FTP_PASSWORD, "Medici HTSS", path, rar_file):
            success = extract_rar_file(full_rar_path, path)
            if success:
                log_error(f"Successfully extracted {rar_file} to {path}")
            else:
                log_error(f"Failed to extract {rar_file} to {path}")
        else:
            log_error(f"Failed to download {rar_file} from FTP to {path}")

if __name__ == "__main__":
    main()
