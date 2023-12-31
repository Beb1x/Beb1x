import os
import pyodbc
import xml.etree.ElementTree as ET
import chardet
import tkinter as tk
from tkinter import Entry, Button, Label, Text, Scrollbar, filedialog
def detect_encoding(file_path):
    with open(file_path, 'rb') as f:
        result = chardet.detect(f.read())
    return result['encoding']
def execute_sql_statements(cursor, sql_statements):
    for statement in sql_statements:
        try:
            if statement.strip().startswith(('CREATE FUNCTION', 'CREATE/ALTER PROCEDURE', 'CREATE TRIGGER')):
                dynamic_sql = statement
                cursor.execute(dynamic_sql)
            else:
                cursor.execute(statement)
            conn.commit()
        except pyodbc.DatabaseError as e:
            log(f"Database error: {str(e)}")
        except Exception as e:
            log(f"Error: {str(e)}")
def execute_scripts():
    global server, database, base_path, sql_folder, conn
    server = server_entry.get()
    database = database_entry.get()
    base_path = base_path_entry.get()
    sql_folder = base_path
    try:
        conn = pyodbc.connect(f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}')
        tree = ET.parse(os.path.join(base_path, 'upgradedb.xml'))
        root = tree.getroot()
        for execute_elem in root.findall('.//execute'):
            script_name = execute_elem.get('script')
            script_path = os.path.join(sql_folder, script_name)
            if os.path.exists(script_path):
                encoding = detect_encoding(script_path)
                with open(script_path, 'r', encoding=encoding) as f:
                    sql_script = f.read()
                sql_statements = sql_script.split('GO')
                sql_statements = [s.strip() for s in sql_statements if s.strip()]
                try:
                    cursor = conn.cursor()
                    execute_sql_statements(cursor, sql_statements)
                    cursor.close()
                    log(f"Executed {script_name} successfully on database {database}.")
                except pyodbc.DatabaseError as e:
                    log(f"Database error: {str(e)}")
                except Exception as e:
                    log(f"Error: {str(e)}")
            else:
                log(f"Script file {script_name} not found.")
        conn.close()
    except Exception as e:
        log(f"Error: {str(e)}")
def log(message):
    log_text.config(state=tk.NORMAL)
    log_text.insert(tk.END, message + '\n')
    log_text.see(tk.END)
    log_text.config(state=tk.DISABLED)
username = 'SQL USERNAME'
password = 'SQL PASSWORD'
root = tk.Tk()
root.title("SQL Script Executor")
server_label = Label(root, text="Server IP:")
server_label.pack()
server_entry = Entry(root)
server_entry.pack()
database_label = Label(root, text="SQL BASE:")
database_label.pack()
database_entry = Entry(root)
database_entry.pack()
base_path_label = Label(root, text="Xml+script path:")
base_path_label.pack()
base_path_entry = Entry(root)
base_path_entry.pack()
def choose_base_path():
    folder_path = filedialog.askdirectory()
    base_path_entry.delete(0, tk.END)
    base_path_entry.insert(0, folder_path)
base_path_button = Button(root, text="Choose folder", command=choose_base_path)
base_path_button.pack()
execute_button = Button(root, text="Start", command=execute_scripts)
execute_button.pack()
log_text = Text(root, height=20, width=85, state=tk.DISABLED)
log_text.pack()
scrollbar = Scrollbar(root, command=log_text.yview)
scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
log_text.config(yscrollcommand=scrollbar.set)
root.mainloop()
