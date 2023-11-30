import requests
import os
import re
import zipfile
import configparser
import time

config = configparser.ConfigParser()
config.read("C:\\IT\\ConfigMedici.ini")
base_url = "http://www.casan.ro/cjasvs/page/nomenclatoare.html"
file_pattern = r'NomenclatoareFarmacii_\d{8}.xml.zip'
response = requests.get(base_url)
if response.status_code == 200:
    file_names = re.findall(file_pattern, response.text)
    if file_names:
        for key in config["Settings"]:
            if key.startswith("path"):
                download_path = config["Settings"][key]
                for file_name in file_names:
                    if not os.path.exists(os.path.join(download_path, file_name)):
                        file_url = f"http://www.casan.ro/cjasvs/media/pageFiles/{file_name}"
                        response = requests.get(file_url)
                        if response.status_code == 200:
                            os.makedirs(download_path, exist_ok=True)
                            file_path = os.path.join(download_path, file_name)
                            with open(file_path, 'wb') as f:
                                f.write(response.content)
                            with zipfile.ZipFile(file_path, 'r') as zip_ref:
                                zip_ref.extractall(download_path)
                            os.remove(file_path)
                            print(f"Downloaded and extracted {file_name} to {download_path}")
                        else:
                            print(f"Failed to download {file_name}")
                    else:
                        print(f"Skipped {file_name} because it already exists in {download_path}")
    else:
        print("No matching file name found on the website")
else:
    print("Failed to access the website")
time.sleep(5)
