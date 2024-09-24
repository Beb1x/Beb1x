import os
import pyautogui
import logging
import configparser
import time
import win32gui
from queue import Queue
from threading import Thread, Event
from pathlib import Path
import pystray
from PIL import Image
import pygetwindow as gw
import sys

#NOT LONGER USED
LOCKED_FILE_PATH = "C:\\IT\\AutoStuff\\locked.txt"
ICO_PATH = Path("C:\\IT\\AutoStuff\\miti.ico")
CONFIG_PATH = "C:\\IT\\AutoStuff\\Config.ini"
def nu_deschidem_mai_multe_instante(LOCKED_FILE_PATH):
    try:
        with open(LOCKED_FILE_PATH, "w") as ab:
            ab.write("Lockedapp=1")
    except Exception as e:
        logging.exception(f"Error creating LockFile:{e}")
def verifica_sa_fie_singur(LOCKED_FILE_PATH):
    if os.path.exists(LOCKED_FILE_PATH):
        logging.warning("e deschis deja...")
        return False
    return True
def create_config_if_missing(config_path):
    if not os.path.exists(config_path):
        logging.info(f"Config file not found. Creating at {config_path}")
        config = configparser.ConfigParser()
        config['Settings'] = {'pin': '123456789', 'WindowTitle': 'cum se numeste fereastra'}
        with open(config_path, 'w') as config_file:
            config.write(config_file)
def setup_logging(log_path):
    logging.basicConfig(filename=log_path, level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging.ERROR)
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    console_handler.setFormatter(formatter)
    logging.getLogger().addHandler(console_handler)
def find_window(title):
    try:
        return gw.getWindowsWithTitle(title)[0]
    except IndexError:
        logging.debug(f"Window with title '{title}' not found.")
        return None
def disable_input(window):
    try:
        win32gui.EnableWindow(window.hWnd, False)
    except AttributeError:
        logging.warning("Window object does not have 'hWnd' attribute.")
def enable_input(window):
    try:
        win32gui.EnableWindow(window.hWnd, True)
    except AttributeError:
        logging.warning("Window object does not have 'hWnd' attribute.")
def simulate_keyboard_input(pin_number, target_window):
    try:
        if target_window.isMinimized:
            target_window.restore()
            time.sleep(0.5)
        target_window.activate()
        time.sleep(0.5)
        disable_input(target_window)
        pyautogui.write(pin_number)
        pyautogui.press('enter')
        enable_input(target_window)
        target_window.activate()
    except Exception as e:
        logging.error(f"An error occurred during keyboard input simulation: {e}")
def check_program_periodically(window_title, window_queue, event):
    while True:
        try:
            window = find_window(window_title)
            if window:
                window_queue.put(window)
                event.set()
            else:
                logging.debug("Window not found. Waiting for it to appear...")
        except Exception as e:
            logging.exception(f"An error occurred: {e}")
        time.sleep(10)
def process_window_queue(pin_number, window_queue):
    while True:
        window = window_queue.get()
        if window:
            simulate_keyboard_input(pin_number, window)
def adaptive_window_check(window_title, window_queue, event):
    while True:
        try:
            event.wait()
            event.clear()
            start_time = time.time()
            while time.time() - start_time < 30:
                window = find_window(window_title)
                if window:
                    window_queue.put(window)
                else:
                    logging.debug("Window not found during monitoring.")
                    break
                time.sleep(1)
        except Exception as e:
            logging.exception(f"An error occurred during adaptive window check: {e}")
        time.sleep(10)
def clear_old_logs(log_path):
    try:
        log_date_threshold = time.time() - (30 * 24 * 60 * 60)
        with open(log_path, 'r') as log_file:
            lines = log_file.readlines()
        with open(log_path, 'w') as log_file:
            for line in lines:
                log_entry_time_str = line.split(' - ')[0]
                log_entry_time = time.mktime(time.strptime(log_entry_time_str, '%Y-%m-%d %H:%M:%S,%f'))
                if log_entry_time > log_date_threshold:
                    log_file.write(line)
    except Exception as e:
        logging.exception(f"An error occurred while clearing old logs: {e}")
def create_system_tray_icon(terminate_event, restart_event):
    def on_exit(icon, item):
        logging.info(f"Selected menu item: {item}")
        if item == "Exit":
            terminate_event.set()
        elif item == "Restart":
            restart_event.set()

    image = Image.open(ICO_PATH)
    menu = (pystray.MenuItem("Restart", on_exit), pystray.MenuItem("Exit", on_exit))
    icon = pystray.Icon("name", image, "title", menu)
    icon.run()
def main():
    base_path = r'C:\IT\AutoStuff'
    log_path = os.path.join(base_path, 'Log.txt')
    config_path = CONFIG_PATH
    if not verifica_sa_fie_singur(LOCKED_FILE_PATH):
        return
    nu_deschidem_mai_multe_instante(LOCKED_FILE_PATH)
    setup_logging(log_path)
    config = configparser.ConfigParser()
    create_config_if_missing(config_path)
    config.read(config_path)
    window_title = config['Settings']['WindowTitle']
    pin_number = config['Settings']['pin']
    try:
        logging.info("Script started.")
        if not os.path.exists(base_path):
            os.makedirs(base_path)
            logging.info(f"Script created its own path: {base_path}")
        window_queue = Queue()
        terminate_event = Event()
        restart_event = Event()
        window_thread = Thread(target=process_window_queue, args=(pin_number, window_queue))
        window_thread.start()
        adaptive_check_thread = Thread(target=adaptive_window_check, args=(window_title, window_queue, restart_event))
        adaptive_check_thread.start()
        check_thread = Thread(target=check_program_periodically, args=(window_title, window_queue, restart_event))
        check_thread.start()
        clear_log_thread = Thread(target=clear_old_logs, args=(log_path,))
        clear_log_thread.start()
        tray_icon_thread = Thread(target=create_system_tray_icon, args=(terminate_event, restart_event))
        tray_icon_thread.start()
        window_thread.join()
        adaptive_check_thread.join()
        check_thread.join()
        clear_log_thread.join()
        tray_icon_thread.join()
        if restart_event.is_set():
            logging.info("Restarting the application...")
            os.remove(LOCKED_FILE_PATH)
            os.execv(sys.executable, [sys.executable] + sys.argv)
    except KeyboardInterrupt:
        logging.info("Script stopped by the user.")
    except Exception as e:
        logging.exception(f"An unexpected error occurred: {e}")
    finally:
        logging.info("Facem curat findca sa terminat script")
        if os.path.exists(LOCKED_FILE_PATH):
            os.remove(LOCKED_FILE_PATH)
if __name__ == "__main__":
    main()