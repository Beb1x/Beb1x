import requests
import os
import zipfile
import configparser
import time
import re
from bs4 import BeautifulSoup

config = configparser.ConfigParser()
config_dir = "C:\\IT\\WebExtractor"
os.makedirs(config_dir, exist_ok=True)
config_file_path = os.path.join(config_dir, "config.ini")
default_download_path = "C:\\IT\\WebExtractor\\Download"
os.makedirs(default_download_path, exist_ok=True)

if not os.path.exists(config_file_path):
    config = configparser.ConfigParser()
    
    config.add_section("Website1")
    config.set("Website1", "URL", "https://github.com/Beb1x/Beb1x/releases/tag/v0.0.1-alpha")
    config.set("Website1", "DownloadPath", default_download_path)
    config.set("Website1", "FilePattern", "%%.*%%.zip")  # Default file pattern
    
    config.add_section("Website2")
    config.set("Website2", "URL", "https://freetestdata.com/xml-files/")
    config.set("Website2", "DownloadPath", default_download_path)
    config.set("Website2", "FilePattern", "%%.*%%.xml")  # Default file pattern
    
    with open(config_file_path, 'w') as configfile:
        config.write(configfile)

config = configparser.ConfigParser()
config.read(config_file_path)

def list_extractable_media(url, file_pattern):
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, "html.parser")
        media_links = []
        for link in soup.find_all('a', href=True):
            href = str(link.get('href'))  # Convert to string
            if re.search(file_pattern, href):
                media_links.append(href)
        
        if media_links:
            print("The following media files can be extracted:")
            for media_link in media_links:
                print(media_link)
        else:
            print("No matching media found on the website")
    else:
        print("Failed to access the website")

def find_and_download_media(url, download_path, file_pattern):
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, "html.parser")
        media_links = []
        for link in soup.find_all('a', href=True):
            href = str(link.get('href'))  # Convert to string
            if re.search(file_pattern, href):
                media_links.append(href)
        
        if media_links:
            for media_link in media_links:
                file_url = media_link
                response = requests.get(file_url)
                if response.status_code == 200:
                    os.makedirs(download_path, exist_ok=True)
                    file_name = os.path.basename(file_url)
                    file_path = os.path.join(download_path, file_name)
                    with open(file_path, 'wb') as f:
                        f.write(response.content)
                    with zipfile.ZipFile(file_path, 'r') as zip_ref:
                        zip_ref.extractall(download_path)
                    os.remove(file_path)
                    print(f"Downloaded and extracted {file_name} to {download_path}")
                else:
                    print(f"Failed to download {media_link}")
        else:
            print("No matching media found on the website")
    else:
        print("Failed to access the website")

def set_file_pattern():
    user_input = input("Enter a file pattern (e.g., %%AnyFile%%.xml%%.zip): ")
    return user_input

for section in config.sections():
    if section != "DEFAULT":
        website_url = config.get(section, "URL")
        download_path = config.get(section, "DownloadPath")
        print(f"\nWebsite: {section}")
        file_pattern = config.get(section, "FilePattern", fallback=None)
        if not file_pattern:
            print(f"No file pattern found for {section}. Setting default.")
            file_pattern = set_file_pattern()
            config.set(section, "FilePattern", file_pattern) 
            with open(config_file_path, 'w') as configfile:
                config.write(configfile)
        
        list_extractable_media(website_url, file_pattern)  # List available media
        find_and_download_media(website_url, download_path, file_pattern)

time.sleep(5)
