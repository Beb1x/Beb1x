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
from pygetwindow import Win32Window
#pain 28/11/2023
#i think im gonna make an installer then the exe standalone guys fr no cap
class AutoPinConfig:
    def __init__(self, config_path):
        self.config_path = config_path
        self.load_config()

    def load_config(self):
        if not os.path.exists(self.config_path):
            logging.info(f"Config file not found. Creating at {self.config_path}")
            self.create_default_config()

        config = configparser.ConfigParser()
        config.read(self.config_path)

        self.window_title = config.get('Settings', 'WindowTitle', fallback='cum se numeste fereastra')
        self.pin_number = config.get('Settings', 'pin', fallback='123456789')

    def create_default_config(self):
        config = configparser.ConfigParser()
        config['Settings'] = {'pin': '123456789', 'WindowTitle': 'cum se numeste fereastra'}
        with open(self.config_path, 'w') as config_file:
            config.write(config_file)

class AutoPin:
    def __init__(self, config):
        self.config = config
        self.base_path = r'C:\IT\AutoStuff'
        self.locked_file_path = os.path.join(self.base_path, 'locked.txt')
        self.log_path = os.path.join(self.base_path, 'Log.txt')

    def setup_logging(self):
        logging.basicConfig(filename=self.log_path, level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
        console_handler = logging.StreamHandler()
        console_handler.setLevel(logging.ERROR)
        formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
        console_handler.setFormatter(formatter)
        logging.getLogger().addHandler(console_handler)

    def create_system_tray_icon(self, terminate_event, restart_event):
        def on_exit(item):
            logging.info(f"Selected menu item: {item}")
            if item == "Exit":
                terminate_event.set()
            elif item == "Restart":
                restart_event.set()

        image = Image.open(Path("C:\\IT\\AutoStuff\\miti.ico"))
        menu = (pystray.MenuItem("Restart", on_exit), pystray.MenuItem("Exit", on_exit))
        icon = pystray.Icon("name", image, "Autopin", menu)
        icon.run()

    def restart_program(self):
        python = sys.executable
        os.execl(python, python, *sys.argv)

    def start_threads(self):
        window_thread = Thread(target=self.process_window_queue, args=(self.window_queue,))
        window_thread.start()

        adaptive_check_thread = Thread(target=self.adaptive_window_check, args=(self.restart_event,))
        adaptive_check_thread.start()

        check_thread = Thread(target=self.check_program_periodically, args=(self.window_queue, self.restart_event))
        check_thread.start()

        clear_log_thread = Thread(target=self.clear_old_logs)
        clear_log_thread.start()

        tray_icon_thread = Thread(target=self.create_system_tray_icon, args=(self.terminate_event, self.restart_event))
        tray_icon_thread.start()

        return [window_thread, adaptive_check_thread, check_thread, clear_log_thread, tray_icon_thread]

    def join_threads(self, threads):
        for thread in threads:
            thread.join()

    def main(self):
        if not os.path.exists(self.base_path):
            os.makedirs(self.base_path)
            logging.info(f"Script created its own path: {self.base_path}")

        if not self.config.verifica_sa_fie_singur():
            return

        self.nu_deschidem_mai_multe_instante()
        self.setup_logging()

        try:
            logging.info("Script started.")
            self.window_queue = Queue()
            self.terminate_event = Event()
            self.restart_event = Event()

            threads = self.start_threads()
            self.join_threads(threads)

            if self.restart_event.is_set():
                logging.info("Restarting the application...")
                os.remove(self.locked_file_path)
                self.restart_program()

            if self.terminate_event.is_set():
                logging.info("Stopping program")
                os.remove(self.locked_file_path)
                sys.exit()

        except Exception as e:
            logging.exception(f"An unexpected error occurred: {e}")

        finally:
            logging.info("Facem curat findca sa terminat script")
            if os.path.exists(self.locked_file_path):
                os.remove(self.locked_file_path)

    def nu_deschidem_mai_multe_instante(self):
        try:
            with open(self.locked_file_path, "w") as ab:
                ab.write("Lockedapp=1")
        except Exception as e:
            logging.exception(f"Error creating LockFile:{e}")

    def verifica_sa_fie_singur(self):
        if os.path.exists(self.locked_file_path):
            logging.warning("e deschis deja...")
            return False
        return True

    def find_window(self, title):
        try:
            return gw.getWindowsWithTitle(title)[0]
        except IndexError:
            logging.debug(f"Window with title '{title}' not found.")
            return None

    def get_window_handle(self, window):
        try:
            if isinstance(window, Win32Window):
                return window._hWnd
            else:
                logging.warning("Unsupported window type.")
                return None
        except Exception as e:
            logging.warning(f"An error occurred while getting window handle: {e}")
            return None

    def disable_input(self, window):
        try:
            hWnd = self.get_window_handle(window)
            if hWnd:
                win32gui.EnableWindow(hWnd, False)
        except AttributeError:
            logging.warning("Window object does not have 'hWnd' attribute.")
    
    def enable_input(self, window):
        try:
            win32gui.EnableWindow(window.hWnd, True)
        except AttributeError:
            logging.warning("Window object does not have 'hWnd' attribute.")

    def simulate_keyboard_input(self, target_window):
        try:
            if target_window.isMinimized:
                target_window.restore()
                time.sleep(0.5)

            target_window.activate()
            time.sleep(0.5)

            self.disable_input(target_window)
            pyautogui.write(self.config.pin_number)
            pyautogui.press('enter')
            self.enable_input(target_window)
            target_window.activate()

        except Exception as e:
            logging.error(f"An error occurred during keyboard input simulation: {e}")

    def check_program_periodically(self, window_queue, event):
        while True:
            try:
                window = self.find_window(self.config.window_title)

                if window:
                    window_queue.put(window)
                    event.set()
                else:
                    logging.debug("Window not found. Waiting for it to appear...")

            except Exception as e:
                logging.exception(f"An error occurred: {e}")

            time.sleep(10)

    def process_window_queue(self):
        while True:
            window = self.window_queue.get()

            if window:
                self.simulate_keyboard_input(window)

    def adaptive_window_check(self, restart_event):
        while True:
            try:
                restart_event.wait()
                restart_event.clear()

                start_time = time.time()

                while time.time() - start_time < 30:
                    window = self.find_window(self.config.window_title)

                    if window:
                        self.window_queue.put(window)
                    else:
                        logging.debug("Window not found during monitoring.")
                        break

                    time.sleep(1)

            except Exception as e:
                logging.exception(f"An error occurred during adaptive window check: {e}")

            time.sleep(10)

    def clear_old_logs(self):
        try:
            log_date_threshold = time.time() - (30 * 24 * 60 * 60)
            with open(self.log_path, 'r') as log_file:
                lines = log_file.readlines()

            with open(self.log_path, 'w') as log_file:
                for line in lines:
                    log_entry_time_str = line.split(' - ')[0]
                    log_entry_time = time.mktime(time.strptime(log_entry_time_str, '%Y-%m-%d %H:%M:%S,%f'))
                    if log_entry_time > log_date_threshold:
                        log_file.write(line)

        except Exception as e:
            logging.exception(f"An error occurred while clearing old logs: {e}")
