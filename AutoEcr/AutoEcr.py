#!/usr/bin/env python3
# Python 3.11
# Author :beb1x
# Date of creation . between 10.08.2023 - 16.08.2023
import os
import win32serviceutil
import win32com.client
import serial.tools.list_ports
import psutil
import time
import subprocess
import configparser

WORDLIST = ["Datecs Virtual COM Port", "Virtual", "COM", "Port", "1", "2", "3", "4", "5", "6", "7", "8"]
DDEFAULT_PATH = r'C:\DataKlas\DataklasECR'
SERVICE_NAME = "DataKlasAgentSrv"
DEVICE_NAME = "Datecs Virtual COM Port"
KILL_AND_START_BATCH_CONTENT = """
@echo off
taskkill /IM "dataklasECR.exe" /F
TIMEOUT /T 4 /NOBREAK
start "" "C:\DataKlas\DataklasECR\dataklasECR.exe"
net start DataKlasAgentSrv
"""
#instead of dataklasagentsrv you can put any service you have for fiscal receipt generation
def check_service_running(service_name):
    if not win32serviceutil.QueryServiceStatus(service_name)[1] == win32serviceutil.SERVICE_RUNNING:
        print("Dataklas agent is not running as a service.")
        exit()
 
def list_com_ports():
    com_ports = list(serial.tools.list_ports.comports())
    for port, desc, hwid in com_ports:
        print(f"Port: {port}, Description: {desc}")

def get_com_port(device_name):
    wmi = win32com.client.GetObject("winmgmts:")
    for port in wmi.InstancesOf("Win32_SerialPort"):
        if device_name in port.Name:
            return port.DeviceID.split('COM')[1]
    return None  

def remove_sections_with_keywords(config, keywords):
    sections_to_remove = []
    for section in config.sections():
        if any(keyword in section for keyword in keywords):
            sections_to_remove.append(section)
    for section in sections_to_remove:
        config.remove_section(section)

def write_config_to_ini(config, com_port):
    section_name = f'COM{com_port}'
    if not config.has_section(section_name):
        config.add_section(section_name)
        config.set(section_name, 'path', r'C:\Bonuri')
    with open('ZFPRServer.ini', 'w') as config_file:
        config.write(config_file)
#default program path
def terminate_processes_in_folder(DDEFAULT_PATH):
    DDEFAULT_PATH = r'C:\Program Files (x86)\ZFPRServer'
    try:
        subprocess.call([os.path.join(DDEFAULT_PATH, 'KillAndStartZeka.bat')], shell=True)
    except Exception:
        pass

def restart_application_and_start_service(DDEFAULT_PATH, service_name):
    try:
        subprocess.call([os.path.join(DDEFAULT_PATH, 'ZFPRServer.exe')])

        if win32serviceutil.QueryServiceStatus(service_name)[1] != win32serviceutil.SERVICE_RUNNING:
            print(f"Starting service: {service_name}")
            win32serviceutil.StartService(service_name)
        else:
            print(f"Service {service_name} is already running.")
    except Exception as e:
        print(f"Error restarting application and starting service: {e}")

def terminate_processes_in_folder(DDEFAULT_PATH):
    try:
        subprocess.call([os.path.join(DDEFAULT_PATH, 'KillAndStartZeka.bat')], shell=True)
        
        time.sleep(2)
        
        processes_still_running = False
        for proc in psutil.process_iter(attrs=['pid', 'name']):
            if "ZFPRServer.exe" in proc.info['name']:
                processes_still_running = True
                break

        if processes_still_running:
            print("Not all Zeka processes terminated successfully.")
        else:
            print("Zeka processes terminated successfully.")
    except Exception as e:
        print(f"Error terminating Zeka processes: {e}")

        
def create_and_run_batch_script(script_content, script_path):
    with open(script_path, 'w') as f:
        f.write(script_content)
    subprocess.call([script_path], shell=True)

def main():
    default_path = DDEFAULT_PATH
    service_name = SERVICE_NAME
    device_name = DEVICE_NAME
    with open(os.path.join(default_path, 'KillAndStartZeka.bat'), 'w') as f:
        f.write(KILL_AND_START_BATCH_CONTENT)

    merged_batch_script_path = os.path.join(default_path, 'KillAndStartZeka.bat')
    create_and_run_batch_script(KILL_AND_START_BATCH_CONTENT, merged_batch_script_path)

    check_service_running(service_name)

    list_com_ports()
    com_port = get_com_port(device_name)

    terminate_processes_in_folder(default_path)  

    open('ZFPRServer.ini', 'w').close()

    if com_port is not None:
        config = configparser.ConfigParser()

        if os.path.exists('ZFPRServer.ini'):
            config.read('ZFPRServer.ini')
            remove_sections_with_keywords(config, WORDLIST)
            write_config_to_ini(config, com_port)
        else:
            print("Nu gasesc ZFPRServer.ini")
    else:
        print("Nu gasesc COM port")

    subprocess.call([os.path.join(default_path, 'ZFPRServer.exe')])

    restart_application_and_start_service(default_path, service_name)

if __name__ == "__main__":
    main()

batch_file_path = r"C:\Program Files (x86)\ZFPRServer\KillAndStartZeka.bat"

try:
    subprocess.run(batch_file_path, shell=True, check=True, cwd=os.path.dirname(batch_file_path))
    print("Batch file executed successfully.")
except subprocess.CalledProcessError as e:
    print("Error occurred while executing the batch file:", e)
