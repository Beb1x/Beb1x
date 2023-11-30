from exchangelib import Credentials, Account, DELEGATE
import os
from datetime import datetime
import shutil
#working on it
def download_and_save_attachments(username, password, save_path):
    credentials = Credentials(username, password)
    account = Account(username, credentials=credentials, autodiscover=True, access_type=DELEGATE)
    for item in account.inbox.filter(subject__contains='Your Subject Filter'):
        if item.attachments:
            for attachment in item.attachments:
                if attachment.name.endswith('.xlsx'):
                    folder_path = os.path.join(save_path, item.subject)
                    os.makedirs(folder_path, exist_ok=True)
                    current_date = datetime.now().strftime('%d.%m.%Y')
                    new_filename = f"{os.path.splitext(attachment.name)[0]} {current_date}.xlsx"
                    save_location = os.path.join(folder_path, new_filename)
                    with open(save_location, 'wb') as f:
                        f.write(attachment.content)

if __name__ == "__main__":
    outlook_username = 'your_email@example.com'
    outlook_password = 'your_password'
    save_path = 'C:\\DontTouch\\'

    download_and_save_attachments(outlook_username, outlook_password, save_path)
