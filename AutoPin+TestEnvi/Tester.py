import ctypes
from ctypes import wintypes
import winreg




class CREDUI_INFO(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("hwndParent", wintypes.HWND),
        ("pszMessageText", wintypes.LPCWSTR),
        ("pszCaptionText", wintypes.LPCWSTR),
        ("hbmBanner", wintypes.HANDLE)
    ]

def is_windows_defender_enabled():
    try:
        key_path = r"SOFTWARE\Microsoft\Windows Defender"
        with winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, key_path) as key:
            value, _ = winreg.QueryValueEx(key, "DisableAntiSpyware")
            return value == 0
    except Exception as e:
        print(f"Error checking Windows Defender status: {e}")
        return None

def show_pin_dialog(default_pin):
    credUI = ctypes.windll.credUI

    credUI.CredUIPromptForWindowsCredentialsW.argtypes = [
        ctypes.POINTER(CREDUI_INFO),
        wintypes.DWORD,
        wintypes.LPDWORD,
        wintypes.LPCWSTR,
        wintypes.DWORD,
        wintypes.LPCVOID,
        wintypes.DWORD,
        wintypes.LPVOID,
        wintypes.LPVOID,
        wintypes.LPBOOL,
    ]
    credUI.CredUIPromptForWindowsCredentialsW.restype = wintypes.DWORD

    info = CREDUI_INFO()
    info.cbSize = ctypes.sizeof(CREDUI_INFO)
    info.pszMessageText = "Enter your PIN:"
    info.hwndParent = 0

    target_name = "PythonScript"
    max_user_len = wintypes.DWORD(256)
    max_password_len = wintypes.DWORD(256)
    username = ctypes.create_unicode_buffer(max_user_len.value)
    password = ctypes.create_unicode_buffer(default_pin) 
    save = wintypes.BOOL()

    result = credUI.CredUIPromptForWindowsCredentialsW(
        ctypes.byref(info),
        0,
        ctypes.byref(max_user_len),
        target_name,
        0,
        0,
        0,
        ctypes.byref(username),
        ctypes.byref(password),
        ctypes.byref(save),
    )

    if result == 0:
        entered_pin = password.value
        if entered_pin == default_pin:
            print(f"PIN entered: {entered_pin}")
        else:
            print("Entered PIN not good")
    else:
        print(f"Failed to retrieve PIN. Error code: {result}")

def main():
    default_pin = "123"
    defender_enabled = is_windows_defender_enabled()

    if defender_enabled is not None:
        print("Windows Defender Status:")
        print("Enabled" if defender_enabled else "Not Enabled")

        if defender_enabled:
            print("Launching PIN entry ...")
            show_pin_dialog(default_pin)
    else:
        print("Failed to retrieve Windows Defender status.")

if __name__ == "__main__":
    main()


    ##doenst really work god d####