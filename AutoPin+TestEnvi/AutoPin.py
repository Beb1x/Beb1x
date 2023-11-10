import os
import time
import pyautogui
import psutil
import logging
import configparser
import ctypes
import asyncio
import re
from typing import Optional
import sys

def setup_logging(log_path):
    logging.basicConfig(filename=log_path, level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging.DEBUG)
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    console_handler.setFormatter(formatter)
    logging.getLogger().addHandler(console_handler)
def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False
def find_window(title):
    try:
        window = pyautogui.getWindowsWithTitle(title)[0]
        return window
    except IndexError:
        logging.info(f"Window with title '{title}' not found.")
        return None
def run_program_if_not_running(exe_name: str) -> bool:
    running_processes = [process.name() for process in psutil.process_iter()]
    if exe_name in running_processes:
        logging.debug(f"Program '{exe_name}' is already running.")
    return True
async def activate_window_and_enter_pin(window, pin_number):
    if not window.isActive:
        window.activate()
        await asyncio.sleep(1)
    try:
        pyautogui.write(pin_number)
        pyautogui.press('enter')
        logging.info("PIN entered successfully.")
    except Exception as pin_error:
        logging.error(f"Error entering PIN: {pin_error}")
def create_config_if_missing(config_path):
    if not os.path.exists(config_path):
        logging.info(f"Config file not found. Creating at {config_path}")
        config = configparser.ConfigParser()
        config['Settings'] = {'pin': '123456789', 'WindowTitle': 'Your Window Title', 'ExeMonitorPath': 'C:\Windows\SysWOW64\myProgram.exe'}
        with open(config_path, 'w') as config_file:
            config.write(config_file)
async def check_program_periodically(window_title, pin_number, exe_name):
    pin_pattern = re.compile(r'^' + re.escape(pin_number) + r'$')
    while True:
        try:
            if run_program_if_not_running(exe_name):
                window = find_window(window_title)
                if window:
                    await activate_window_and_enter_pin(window, pin_number)
                else:
                    logging.info("Window not found. Waiting for it to appear...")
            else:
                logging.info(f"Program '{exe_name}' not running. Waiting for it to start...")
        except Exception as e:
            logging.exception(f"An error occurred: {e}")
        await asyncio.sleep(10)
def prompt_admin():
    ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, " ".join(sys.argv), None, 1)

def main() -> None:
    base_path = r'C:\IT\AutoStuff'
    log_path = os.path.join(base_path, 'Log.txt')
    config_path = os.path.join(base_path, 'Config.ini')
    if not is_admin():
        logging.error("Script must be run as an administrator. Please run the script with elevated privileges.")
        prompt_admin()
        return
    if not os.path.exists(base_path):
        os.makedirs(base_path)
        logging.info(f"Script created its own path: {base_path}")
    create_config_if_missing(config_path)
    setup_logging(log_path)
    config = configparser.ConfigParser()
    config.read(config_path)
    window_title = config['Settings']['WindowTitle']
    pin_number = config['Settings']['pin']
    exe_name = os.path.basename(config['Settings']['ExeMonitorPath'])
    try:
        logging.info("Script started.")
        asyncio.run(check_program_periodically(window_title, pin_number, exe_name))
    except KeyboardInterrupt:
        logging.info("Script stopped by the user.")
    except Exception as e:
        logging.exception(f"An unexpected error occurred: {e}")
if __name__ == "__main__":
    main()