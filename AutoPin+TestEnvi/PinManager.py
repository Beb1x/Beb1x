import time
import xml.etree.ElementTree as ET
import pygetwindow as gw
import pyautogui
window_title = "Windows Security"
xml_path = r"C:\SIUIServer\SIUIProxy.exe.config"
def get_pin_from_xml(xml_file_path):
    try:
        tree = ET.parse(xml_file_path)
        root = tree.getroot()
        pin = root.find(".//setting[@name='PIN']/value").text
        print(f"PIN extras din siuiservers: {pin}")
        return pin
    except Exception as e:
        print(f"Eroarea citire PIN vezi formatul xml: {str(e)}")
        return None
def set_window_foreground(window_title):
    windows = gw.getWindowsWithTitle(window_title)
    if windows:
        window = windows[0]
        if window.isActive:
            print(f"Vad fereastra: '{window_title}' Si este deja in focus incerc PIN")
            return True
        else:
            print(f"Vad fereastra: '{window_title}' Incerc sa aduc in focus")
            try:
                if window.isMinimized:
                    window.restore() 
                    time.sleep(0.5)  
                window.activate()  
                time.sleep(0.5) 
                if window.isActive:  
                    return True
                else:
                    print(f"Fereastra '{window_title}' nu a putut fi activata.")
                    return False
            except Exception as e:
                print(f"Eroare activare fereastra: {str(e)}")
                return False
    else:
        print(f"Nu vad sa fie fereastrea deschisa: '{window_title}', dorm pentru 3 secunde.")
        return False
def enter_pin(pin):
    pyautogui.typewrite(pin)
    pyautogui.press('enter')
    print("PIN a fost introdus cu succes")
while True:
    window_in_focus = set_window_foreground(window_title)
    if window_in_focus:
        pin = get_pin_from_xml(xml_path)
        if pin:
            enter_pin(pin)
        else:
            print("Nu reusesc sa iau PIN ul, vezi formatul lui sa fie ok sau sa fie fisierul existent")
            break
    else:
        time.sleep(3)
    time.sleep(3)
