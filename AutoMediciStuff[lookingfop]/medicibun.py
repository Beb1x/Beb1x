import os
import re
import zipfile
import configparser
import time
import logging
from logging.handlers import TimedRotatingFileHandler
from datetime import datetime, timedelta
import requests

LOG_FOLDER = "C:\\IT\\AutoMedic\\logs"
CONFIG_FILE_PATH = "C:\\IT\\AutoMedic\\ConfigMedici.ini"
BASE_URL = "http://www.casan.ro/cjasvs/page/nomenclatoare.html"
FILE_PATTERN = r'NomenclatoareFarmacii_\d{8}.xml.zip'

if not os.path.exists(LOG_FOLDER):
    os.makedirs(LOG_FOLDER, exist_ok=True)

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

# Check if the directory exists, create it if not
config_directory = os.path.dirname(CONFIG_FILE_PATH)
if not os.path.exists(config_directory):
    os.makedirs(config_directory)

# Check if the config file exists, create it with default settings if not
if not os.path.exists(CONFIG_FILE_PATH):
    config = configparser.ConfigParser()
    config["Settings"] = {
        "Path": "C:\\Medici\\Automat",
        "TimeoutHttps": "30"
    }
    with open(CONFIG_FILE_PATH, "w", encoding="utf-8") as configfile:
        config.write(configfile)
    os.chmod(CONFIG_FILE_PATH, 0o444)

# Read from the config file
config = configparser.ConfigParser()
config.read(CONFIG_FILE_PATH)

response = requests.get(BASE_URL, timeout=int(
    config["Settings"]["TimeoutHttps"]))

if response.status_code == 200:
    file_names = re.findall(FILE_PATTERN, response.text)
    if file_names:
        for key, value in config["Settings"].items():
            if key.startswith("path"):
                download_path = value
                for file_name in file_names:
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
    else:
        logger.info("No matching file name found on the website")
else:
    logger.error("Failed to access the website")

time.sleep(5)
