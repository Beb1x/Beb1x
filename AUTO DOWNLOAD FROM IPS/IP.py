from ftplib import FTP
import os
# FTP server details
ftp_server = ''
ftp_username = ''
ftp_password = '!'

# Source and destination paths
source_path = '/C$//'
destination_path = 'C:///10...2/'

try:
    # Connect to the FTP server
    with FTP(ftp_server, ftp_username, ftp_password) as ftp:
        # Change to the source directory on the FTP server
        ftp.cwd(source_path)

        # Create the destination directory if it doesn't exist
        if not os.path.exists(destination_path):
            os.makedirs(destination_path)

        # List files in the source directory
        file_list = ftp.nlst()

        # Download each file
        for file_name in file_list:
            local_file_path = os.path.join(destination_path, file_name)
            with open(local_file_path, 'wb') as local_file:
                ftp.retrbinary('RETR ' + file_name, local_file.write)

    print(f"Files copied successfully from FTP server to {destination_path}")
except Exception as e:
    print(f"Error: {e}")




.... i forgot