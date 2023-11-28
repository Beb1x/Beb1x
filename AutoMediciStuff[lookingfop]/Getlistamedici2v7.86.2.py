import requests
import os
import re
import zipfile
import configparser
import logging
import time

CONFIG_FILE_PATH = "C:\\IT\\ConfigMedici.ini"
BASE_URL = "http://www.casan.ro/cjasvs/page/nomenclatoare.html"
FILE_PATTERN = r'NomenclatoareFarmacii_\d{8}.xml.zip'
STATUS_OK = 200
SLEEP_DURATION = 5
logging.basicConfig(level=logging.debug)
logger = logging.getLogger(__name__)

def download_and_extract_file(file_url, download_path, file_name):
    response = requests.get(file_url)
    if response.status_code == STATUS_OK:
        os.makedirs(download_path, exist_ok=True)
        file_path = os.path.join(download_path, file_name)
        with open(file_path, 'wb') as f:
            f.write(response.content)
        with zipfile.ZipFile(file_path, 'r') as zip_ref:
            zip_ref.extractall(download_path)
        os.remove(file_path)
        logger.info(f"Downloaded and extracted {file_name} to {download_path}")
    else:
        logger.warning(f"Failed to download {file_name}")

def main():
    config = configparser.ConfigParser()
    config.read(CONFIG_FILE_PATH)
    response = requests.get(BASE_URL)
    if response.status_code == STATUS_OK:
        file_names = re.findall(FILE_PATTERN, response.text)
        if file_names:
            for key in config["Settings"]:
                if key.startswith("path"):
                    download_path = config["Settings"][key]
                    for file_name in file_names:
                        if not os.path.exists(os.path.join(download_path, file_name)):
                            file_url = f"http://www.casan.ro/cjasvs/media/pageFiles/{file_name}"
                            download_and_extract_file(file_url, download_path, file_name)
                        else:
                            logger.info(f"Skipped {file_name} because it already exists in {download_path}")
        else:
            logger.warning("No matching file name found on the website")
    else:
        logger.error("Failed to access the website")

    time.sleep(SLEEP_DURATION)

if __name__ == "__main__":
    main()
