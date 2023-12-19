import os
import re

excel_directory = r'C:\Serializare'
hosts_file_path = r'C:\Windows\System32\drivers\etc\hosts'

def get_excel_hostname(excel_file_path):
    # Extract the hostname from the Excel file path
    excel_filename = os.path.basename(excel_file_path)
    # Capture any characters until ".xlsx"
    hostname = re.search(r'(.+?)\.xlsx', excel_filename)
    
    if hostname:
        return hostname.group(1)
    else:
        return None

def get_ip_from_hosts_file(hostname, hosts_file_path):
    # Read the hosts file
    with open(hosts_file_path, 'r') as file:
        for line in file:
            # Extract IP and hostname using regular expression
            match = re.match(r'(\S+)\s+(.+)', line)
            if match:
                ip, h = match.groups()
                if hostname.upper() in h.upper():
                    return ip
    return None

# List all Excel files in the specified directory
excel_files = [f for f in os.listdir(excel_directory) if f.endswith('.xlsx')]

ip_address_result = None

for excel_file in excel_files:
    # Get the full path of the Excel file
    excel_file_path = os.path.join(excel_directory, excel_file)

    # Get the hostname from the Excel file path
    hostname = get_excel_hostname(excel_file_path)

    if hostname:
        # Get the IP address from the hosts file
        ip_address = get_ip_from_hosts_file(hostname, hosts_file_path)

        if ip_address:
            # Store the IP address in the variable
            ip_address_result = ip_address
        else:
            print(f'Hostname {hostname} not found in the hosts file for {excel_file}')
    else:
        print(f'Unable to extract hostname from the Excel file path for {excel_file}')

# Use the stored IP address as needed
if ip_address_result:
    print(f'The IP address is: {ip_address_result}')
else:
    print('No valid IP address found.')