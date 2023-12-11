import os
import re
import zipfile
import configparser
import time
import logging
from logging.handlers import TimedRotatingFileHandler
from datetime import datetime, timedelta
import requests

def setup_logging():
    LOG_FOLDER = "C:\\IT\\AutoMedic\\logs"
    create_path_if_not_exists(LOG_FOLDER)
    log_file = os.path.join(LOG_FOLDER, "script.log")
    log_file_path = os.path.join(LOG_FOLDER, "script.log")
    remove_old_log_files(log_file_path)
    log_handler = TimedRotatingFileHandler(log_file, when="D", interval=1, backupCount=30)
    log_handler.setLevel(logging.INFO)
    log_format = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    log_handler.setFormatter(log_format)
    logger = logging.getLogger()
    logger.addHandler(log_handler)
    logger.setLevel(logging.INFO)
    return logger

def create_path_if_not_exists(path):
    if not os.path.exists(path):
        os.makedirs(path, exist_ok=True)

def remove_old_log_files(log_file_path):
    if os.path.exists(log_file_path):
        file_mod_time = os.path.getmtime(log_file_path)
        thirty_days_ago = (datetime.now() - timedelta(days=30)).timestamp()
        if file_mod_time < thirty_days_ago:
            os.remove(log_file_path)

def read_config_file(config_file_path):
    config = configparser.ConfigParser()
    config.read(config_file_path)
    return config

def process_paths(logger, paths):
    for path_key, path_value in paths.items():
        logger.info(f"Processing path {path_key}: {path_value}")
        if os.path.exists(path_value):
            logger.info(f"The path {path_value} exists.")
        else:
            logger.warning(f"The path {path_value} does not exist.")
            create_path_if_not_exists(path_value)
            logger.info(f"Created path {path_value} with default values.")
        try:
            files_in_path = os.listdir(path_value)
            logger.info(f"Files in {path_value}: {files_in_path}")
        except Exception as e:
            logger.error(f"Error listing files in {path_value}: {str(e)}")

def main():
    logger = setup_logging()

    CONFIG_FILE_PATH = "C:\\IT\\AutoMedic\\ConfigMedici.ini"
    config = read_config_file(CONFIG_FILE_PATH)

    if not config.has_section("Settings") or not config.has_option("Settings", "path") or not config.has_option("Settings", "timeouthttps"):
        logger.debug("Invalid or missing settings in the configuration file. Resetting to default values. Worst case scenario reinstall the exe or contact the maintainer! github.com/Beb1x/Beb1x")
        config["Settings"] = {}
        config["Settings"]["path"] = "D:\\Medici\\Automat"
        config["Settings"]["timeouthttps"] = "30"
        with open(CONFIG_FILE_PATH, "w", encoding="utf-8") as configfile:
            config.write(configfile)
        os.chmod(CONFIG_FILE_PATH, 0o444)

    paths = {key: config[key] for key in config if key.startswith("path")}

    for path_key, path_value in paths.items():
        logger.info(f"Processing path {path_key}: {path_value}")
        if not os.path.exists(path_value):
            logger.warning(f"The path {path_value} does not exist.")
            create_path_if_not_exists(path_value)
            logger.info(f"Created path {path_value} with default values.")
        try:
            files_in_path = os.listdir(path_value)
            logger.info(f"Files in {path_value}: {files_in_path}")
        except Exception as e:
            logger.error(f"Error listing files in {path_value}: {str(e)}")

    if not paths:
        logger.warning("No paths found in the configuration file. Writing default paths.")

    process_paths(logger, paths)

    BASE_URL = "http://www.casan.ro/cjasvs/page/nomenclatoare.html"
    FILE_PATTERN = r'NomenclatoareFarmacii_\d{8}.xml.zip'

    try:
        response = requests.get(BASE_URL, timeout=int(config["Settings"]["TimeoutHttps"]))
        response.raise_for_status()
        if response.status_code == 200:
            file_names = re.findall(FILE_PATTERN, response.text)
            if file_names:
                for key in paths:
                    download_path = paths[key]
                    create_path_if_not_exists(download_path)
                    for file_name in file_names:
                        file_path = os.path.join(download_path, file_name)
                        if not os.path.exists(file_path):
                            file_url = f"http://www.casan.ro/cjasvs/media/pageFiles/{file_name}"
                            response = requests.get(file_url, timeout=int(config["Settings"]["TimeoutHttps"]))
                            response.raise_for_status()
                            with open(file_path, 'wb') as f:
                                f.write(response.content)
                            with zipfile.ZipFile(file_path, 'r') as zip_ref:
                                zip_ref.extractall(download_path)
                            os.remove(file_path)
                            logger.info(f"Downloaded and extracted {file_name} to {download_path}")
                        else:
                            logger.info(f"Skipped {file_name} because it already exists in {download_path}")
            else:
                logger.info("No matching file name found on the website")
        else:
            logger.error("Failed to access the website")
    except requests.exceptions.RequestException as e:
        logger.error(f"Request error: {str(e)}")

    time.sleep(5)

if __name__ == "__main__":
    main()




# ... (previous code)

def main():
    logger = setup_logging()

    CONFIG_FILE_PATH = "C:\\IT\\AutoMedic\\ConfigMedici.ini"
    config = read_config_file(CONFIG_FILE_PATH)

    if not config.has_section("Settings") or not config.has_option("Settings", "timeouthttps"):
        logger.debug("Invalid or missing settings in the configuration file. Resetting to default values. Worst case scenario reinstall the exe or contact the maintainer! github.com/Beb1x/Beb1x")
        config["Settings"] = {}
        config["Settings"]["path"] = "D:\\Medici\\Automat"
        config["Settings"]["timeouthttps"] = "30"
        with open(CONFIG_FILE_PATH, "w", encoding="utf-8") as configfile:
            config.write(configfile)
        os.chmod(CONFIG_FILE_PATH, 0o444)

    paths = {key: config["Settings"][key] for key in config["Settings"] if key.startswith("path")}

    for path_key, path_value in paths.items():
        logger.info(f"Processing path {path_key}: {path_value}")
        if not os.path.exists(path_value):
            logger.warning(f"The path {path_value} does not exist.")
            create_path_if_not_exists(path_value)
            logger.info(f"Created path {path_value} with default values.")
        try:
            files_in_path = os.listdir(path_value)
            logger.info(f"Files in {path_value}: {files_in_path}")
        except Exception as e:
            logger.error(f"Error listing files in {path_value}: {str(e)}")

    if not paths:
        logger.warning("No paths found in the configuration file. Writing default paths.")

    process_paths(logger, paths)

#still updating please be patient