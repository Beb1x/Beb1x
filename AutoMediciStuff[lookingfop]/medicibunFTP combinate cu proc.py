import os
import re
import zipfile
import configparser
import time
import logging
from logging.handlers import TimedRotatingFileHandler
from datetime import datetime, timedelta
import requests
from ftplib import FTP
import patoolib
from multiprocessing import Process

BASE_URL = "http://www.casan.ro/cjasvs/page/nomenclatoare.html"
FILE_PATTERN = r'NomenclatoareFarmacii_\d{8}.xml.zip'
LOG_FOLDER = "C:\\IT\\AutoMedic\\logs"
CONFIG_FILE_PATH = "C:\\IT\\AutoMedic\\ConfigMedici.ini"
FTP_HOST = "yourhost"
FTP_USERNAME = "test"
FTP_PASSWORD = "test"
FTP_REMOTE_PATH = "test"

def setup_logger():
    log_file = os.path.join(LOG_FOLDER, "script.log")
    log_file_path = os.path.join(LOG_FOLDER, "script.log")

    if os.path.exists(log_file_path):
        file_mod_time = os.path.getmtime(log_file_path)
        thirty_days_ago = (datetime.now() - timedelta(days=30)).timestamp()
        if file_mod_time < thirty_days_ago:
            os.remove(log_file_path)

    log_handler = TimedRotatingFileHandler(
        log_file, when="D", interval=1, backupCount=30)
    log_handler.setLevel(logging.INFO)
    log_format = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    log_handler.setFormatter(log_format)

    logger = logging.getLogger()
    logger.addHandler(log_handler)
    logger.setLevel(logging.INFO)

    return logger


def download_from_website(download_path, file_name, logger):
    file_path = os.path.join(download_path, file_name)
    if not os.path.exists(file_path):
        file_url = f"http://www.casan.ro/cjasvs/media/pageFiles/{file_name}"
        response = requests.get(file_url, timeout=int(
            config["Settings"]["TimeoutHttps"]))
        if response.status_code == 200:
            os.makedirs(download_path, exist_ok=True)
            if not os.path.exists(config_directory):
                os.makedirs(config_directory)
            with open(file_path, 'wb') as f:
                f.write(response.content)
            with zipfile.ZipFile(file_path, 'r') as zip_ref:
                zip_ref.extractall(download_path)
            os.remove(file_path)
            logger.info(
                f"Downloaded and extracted {file_name} to {download_path}")
        else:
            logger.error(
                f"Failed to download {file_name}")
    else:
        logger.info(
            f"Skipped {file_name} because it already exists in {download_path}")


def download_from_ftp(ftp_host, ftp_username, ftp_password, remote_path, local_path, filename, logger):
    try:
        with FTP(ftp_host) as ftp:
            ftp.login(ftp_username, ftp_password)
            ftp.cwd(remote_path)
            with open(os.path.join(local_path, filename), 'wb') as local_file:
                ftp.retrbinary('RETR ' + filename, local_file.write)
        return True
    except Exception as e:
        logger.error(f"Error downloading {filename} from FTP: {e}")
        return False


def extract_rar_file(rar_file, extract_path, logger):
    try:
        patoolib.extract_archive(os.path.join(extract_path, rar_file), outdir=extract_path)
        logger.info(f"Successfully extracted {rar_file} to {extract_path}")
        time.sleep(3)
        os.remove(os.path.join(extract_path, rar_file))
        logger.info(f"Deleted {rar_file}")
        return True
    except Exception as e:
        logger.error(f"Error extracting {rar_file}: {e}")
        return False


def process_website(logger):
    response = requests.get(BASE_URL, timeout=int(
        config["Settings"]["TimeoutHttps"]))

    if response.status_code == 200:
        file_names = re.findall(FILE_PATTERN, response.text)
        if file_names:
            for key, value in config["Settings"].items():
                if key.startswith("path"):
                    download_path = value
                    processes = []
                    for file_name in file_names:
                        p = Process(target=download_from_website, args=(download_path, file_name, logger))
                        p.start()
                        processes.append(p)
                    for p in processes:
                        p.join()
        else:
            logger.info("No matching file name found on the website")
    else:
        logger.error("Failed to access the website")

def process_ftp(download_path, logger):
    file_pattern = re.compile(r'^AOPSNAJ.*\.rar$', re.IGNORECASE)
    try:
        with FTP(FTP_HOST) as ftp:
            ftp.login(FTP_USERNAME, FTP_PASSWORD)
            ftp.cwd(FTP_REMOTE_PATH)
            files = ftp.nlst()

            matching_files = [file for file in files if file_pattern.match(file)]

            processes = []
            for matching_file in matching_files:
                local_file_path = os.path.join(download_path, matching_file)
                p = Process(target=download_and_extract_ftp, args=(FTP_HOST, FTP_USERNAME, FTP_PASSWORD, FTP_REMOTE_PATH, download_path, matching_file, local_file_path, logger))
                p.start()
                processes.append(p)

            for p in processes:
                p.join()
    except Exception as e:
        logger.error(f"Error accessing FTP: {e}")


def download_and_extract_ftp(ftp_host, ftp_username, ftp_password, remote_path, local_path, filename, logger):
    if download_from_ftp(ftp_host, ftp_username, ftp_password, remote_path, local_path, filename, logger):
        success = extract_rar_file(os.path.join(local_path, filename), local_path, logger)
        if success:
            logger.info(f"Successfully extracted {filename} to {local_path}")
        else:
            logger.error(f"Failed to extract {filename} to {local_path}")
    else:
        logger.error(f"Failed to download {filename} from FTP to {local_path}")


if __name__ == "__main__":
    logger = setup_logger()

    config_directory = os.path.dirname(CONFIG_FILE_PATH)
    if not os.path.exists(config_directory):
        os.makedirs(config_directory)

    if not os.path.exists(CONFIG_FILE_PATH):
        config = configparser.ConfigParser()
        config["Settings"] = {
            "Path": "C:\\Medici\\Automat",
            "TimeoutHttps": "30"
        }
        with open(CONFIG_FILE_PATH, "w", encoding="utf-8") as configfile:
            config.write(configfile)
        os.chmod(CONFIG_FILE_PATH, 0o444)

    config = configparser.ConfigParser()
    config.read(CONFIG_FILE_PATH)

    website_process = Process(target=process_website, args=(logger,))
    ftp_process = Process(target=process_ftp, args=(logger,))

    website_process.start()
    ftp_process.start()

    website_process.join()
    ftp_process.join()
