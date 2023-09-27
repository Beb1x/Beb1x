import os
import tkinter as tk
from tkinter import filedialog
def find_missing_and_duplicate_receipt_numbers_in_subfolder(subfolder):
    try:
        subfolder_path = os.path.join(os.getcwd(), subfolder)

        for filename in os.listdir(subfolder_path):
            if filename.endswith(".txt"):
                file_path = os.path.join(subfolder_path, filename)
                with open(file_path, 'r') as file:
                    lines = file.readlines()
                    line = lines
                receipt_counts = {}
                receipt_duplicates = set() 
                receipt_numbers = set()
                for line in lines:
                    if "PNr. bon:" in line: #modify here with what pattern you have
                        receipt_number = int(line.split(":")[1].strip())
                        if receipt_number in receipt_numbers:
                            receipt_duplicates.add(receipt_number)
                        receipt_numbers.add(receipt_number)
                        receipt_counts[receipt_number] = receipt_counts.get(receipt_number, 0) + 1

                if receipt_numbers:
                    min_receipt_number = min(receipt_numbers)
                    max_receipt_number = max(receipt_numbers)

                    missing_receipt_numbers = set(range(min_receipt_number, max_receipt_number + 1)) - receipt_numbers

                    if missing_receipt_numbers or receipt_duplicates:
                        output_text.insert(tk.END, f"Fisier: {filename}\n")
                        output_text.update()
                        output_text.insert(tk.END, f"Primul bon: {min_receipt_number}\n")
                        output_text.update()
                        output_text.insert(tk.END, f"Ultimul bon: {max_receipt_number}\n")
                        output_text.update()
                        
                        if missing_receipt_numbers:
                            output_text.insert(tk.END, f"Bonuri Lipsa: {missing_receipt_numbers}\n")
                        
                        if receipt_duplicates:
                            output_text.insert(tk.END, "Bonuri Duplicate:\n")
                            for receipt_number in receipt_duplicates:
                                output_text.insert(tk.END, f"Bonul {receipt_number} apare de {receipt_counts[receipt_number]} ori.\n")
                        
                        output_text.insert(tk.END, "=" * 40 + "\n")

    except FileNotFoundError:
        output_text.insert(tk.END, f"Subfolder '{subfolder}' not found.\n")

def browse_folder():
    folder_path = filedialog.askdirectory()
    folder_var.set(folder_path)

def start_search():
    subfolder = folder_var.get()
    find_missing_and_duplicate_receipt_numbers_in_subfolder(subfolder)

root = tk.Tk()
root.title("Bonuri Lipsa")
folder_label = tk.Label(root, text="Unde se afla fisierul .txt:")
folder_label.pack()
folder_var = tk.StringVar()
folder_entry = tk.Entry(root, textvariable=folder_var)
folder_entry.pack()
browse_button = tk.Button(root, text="Cauta", command=browse_folder)
browse_button.pack()
start_button = tk.Button(root, text="Start", command=start_search)
start_button.pack()
output_text = tk.Text(root, height=10, width=40)
output_text.pack()
root.mainloop()

# if one thing i know for sure is that sometimes works perfectly
# wednesday,friday and sunday doesn't work still don't know why i tried on multiple pc's diferent os. idk i give up for now
