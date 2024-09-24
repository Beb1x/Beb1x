import requests
import zipfile
        #Nu va merge cel mai probabil, sincer
        # MOST LIKE WILL NOT WORK , IM STILL WORKING ON IT
def get_physician_catalogues():
    url = "https://www.siui.ro/svapntws/services/SiuiWS/getPhysicianCatalogues"
    auth = ('TEST', 'TEST')
    print(f"Incerc un get request la {url} cu authentificarea...")
    response = requests.get(url, auth=auth)
    print(f"Salut am primit codu : {response.status_code}")
    
    if response.status_code == 200:
        print("200 a mers zeule...")
        data = response.json()
        download_url = data.get("downloadUrl")
        file_size = data.get("fileSize")
        print(f"Download URL: {download_url}")
        print(f" file size: {file_size} bytes")
        if not download_url:
            print("Error: Nam gasit nimic, nu mai merge nimic !")
            return
        print(f"descarc : {download_url}...")
        response = requests.get(download_url, auth=auth)
        if response.status_code == 200:
            print("A mers zeul meu, scriu in 'medici.zip'...")
            with open("medici.zip", "wb") as f:
                f.write(response.content)
            print("a mers sa scriu, se vede ca deasta am luat bacu, acum extrag fisierele medici.zip")
            with zipfile.ZipFile("medici.zip") as zip_file:
                for file_info in zip_file.infolist():
                    print(f"Extracting file: {file_info.filename} (size: {file_info.file_size} bytes)")
                    with zip_file.open(file_info) as f:
                        file_content = f.read()
                        print(file_content[:100])  
                        
            print("Extraction complete! oui oui")
        else:
            print(f"Porcarie , nu a mers uite codu : {response.status_code}")
    else:
        print(f"Request failed : status code: {response.status_code}. Check your authentication or the URL. sa las si in engleza zic")
# sincer trebuia aici sa il pun sa fie recursiv pentru funni moment
get_physician_catalogues()
