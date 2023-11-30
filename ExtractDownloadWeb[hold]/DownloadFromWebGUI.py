import requests
import os
import zipfile
import tkinter as tk
from tkinter import filedialog
from tkinter import messagebox
from tkinter import simpledialog
import time
import re

root = tk.Tk()
root.withdraw()

base_url = simpledialog.askstring("Input", "Enter base URL:")

response = requests.get(base_url)

if response.status_code == 200:
    file_names = re.findall(r'href=["\'](a\d{8}\.xml\.zip)["\']', response.text)

    if file_names:
        files_text = "\n".join(file_names)
        files_message = f"Available files for download:\n{files_text}"
        messagebox.showinfo("Files", files_message)

        selected_file = simpledialog.askstring("Input", "Enter the file you want to download:")

        if selected_file in file_names:
            download_link = f"{base_url}/media/pageFiles/{selected_file}"
            response = requests.get(download_link)

            if response.status_code == 200:
                save_location = filedialog.askdirectory(title="Select save location")
                extract_choice = messagebox.askyesno("Extract", "Do you want to extract the file?")

                os.makedirs(save_location, exist_ok=True)
                file_path = os.path.join(save_location, selected_file)

                with open(file_path, 'wb') as f:
                    f.write(response.content)

                if extract_choice:
                    with zipfile.ZipFile(file_path, 'r') as zip_ref:
                        zip_ref.extractall(save_location)

                    os.remove(file_path)
                    messagebox.showinfo("Success", f"Downloaded and extracted {selected_file} to {save_location}")
                else:
                    messagebox.showinfo("Success", f"Downloaded {selected_file} to {save_location}")

            else:
                messagebox.showerror("Error", f"Failed to download {selected_file}")

        else:
            messagebox.showinfo("Info", f"The selected file '{selected_file}' is not available for download.")

    else:
        messagebox.showinfo("Info", "No matching file name found on the website")

else:
    messagebox.showerror("Error", "Failed to access the website")

time.sleep(5)
