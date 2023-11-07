import os

script_template = """
def main():
    config_path = 'C:/IT/WebExtractor/config.ini'
    config_manager = ConfigManager(config_path)

    for section in config_manager.get_website_sections():
        website_url = config_manager.config.get(section, 'url')
        download_path = config_manager.config.get(section, 'downloadpath')
        file_pattern = config_manager.config.get(section, 'filepattern', fallback=None)

        file_extensions_section = config_manager.config['FileExtensions']
        file_extensions = [ext.strip() for ext in file_extensions_section['extensions'].split(',')]

        scrape_and_download(website_url, download_path, file_extensions, file_pattern)

if __name__ == "__main__":
    main()



class ConfigManager:
    def __init__(self, config_path):
        self.config_path = config_path
        self.config = self.load_config()

    def load_config(self):
        if not os.path.exists(self.config_path):
            self.create_default_config()
        config = configparser.ConfigParser()
        config.read(self.config_path, encoding='utf-8')
        return config

    def create_default_config(self):
        config = configparser.ConfigParser()
        config['FileExtensions'] = {
            'extensions': '.xml, .zip, .rar, .pdf, .docx, .jpg, .jpeg, .png, .gif'
        }
        with open(self.config_path, 'w', encoding='utf-8') as configfile:
            config.write(configfile)

    def get_website_sections(self):
        return [section for section in self.config.sections() if section != 'FileExtensions']

def download_file(url, download_folder):
    response = requests.get(url)
    file_name = url.split("/")[-1]
    file_path = os.path.join(download_folder, file_name)
    with open(file_path, "wb") as file:
        file.write(response.content)

def scrape_and_download(url, download_path, file_extensions, file_pattern):
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')
    all_links = soup.find_all('a', href=True)
    downloadable_links = [link['href'] for link in all_links if
                          any(link['href'].endswith(ext) for ext in file_extensions) or (file_pattern and re.search(file_pattern, link['href']))]
    if downloadable_links:
        print("Downloadable links:")
        for i, link in enumerate(downloadable_links):
            print(f"{i + 1}: {link}")
        user_choice = input("Do you want to download files? (yes/no): ")
        if user_choice.lower() == 'yes':
            for link in downloadable_links:
                download_file(link, download_path)
            print(f"Downloaded files to {download_path}")
        else:
            print("No files downloaded.")
    else:
        print("No downloadable files found.")

def main():
    config_path = 'C:/IT/WebExtractor/config.ini'
    config_manager = ConfigManager(config_path)

    for section in config_manager.get_website_sections():
        website_url = config_manager.config.get(section, 'url')
        download_path = config_manager.config.get(section, 'downloadpath')
        file_pattern = config_manager.config.get(section, 'filepattern', fallback=None)
        
        file_extensions_section = config_manager.config['FileExtensions']
        file_extensions = [ext.strip() for ext in file_extensions_section['extensions'].split(',')]

        scrape_and_download(website_url, download_path, file_extensions, file_pattern)

if __name__ == "__main__":
    main()
"""

def generate_script(script_name):
 script_path = os.path.join('scripts', script_name + '.py')
 with open(script_path, 'w') as script_file:
  script_file.write(script_template)

if name == "main":
# Generate the sub-scripts you need
  generate_script('config_manager')
  generate_script('web_scraper')

from scripts.config_manager import ConfigManager
from scripts.web_scraper import scrape_and_download

def main():
    config_path = 'C:/IT/WebExtractor/config.ini'
    config_manager = ConfigManager(config_path)

    for section in config_manager.get_website_sections():
        website_url = config_manager.config.get(section, 'url')
        download_path = config_manager.config.get(section, 'downloadpath')
        file_pattern = config_manager.config.get(section, 'filepattern', fallback=None)

        file_extensions_section = config_manager.config['FileExtensions']
        file_extensions = [ext.strip() for ext in file_extensions_section['extensions'].split(',')]

        scrape_and_download(website_url, download_path, file_extensions, file_pattern)

if __name__ == "__main__":
    main()