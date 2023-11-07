# database_handler.py

import sqlite3

db_path = r"E:\ChatbotDB\chatbot_responses.db"

def connect_to_db():
    conn = sqlite3.connect(db_path)
    return conn
    #i forget about logger / debugger
def create_responses_table(conn):
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS responses (
            input TEXT PRIMARY KEY,
            response TEXT
        )
    ''')
    conn.commit()

def insert_response(conn, input_text, response_text):
    cursor = conn.cursor()
    cursor.execute("INSERT OR REPLACE INTO responses (input, response) VALUES (?, ?)", (input_text, response_text))
    conn.commit()

def get_response_from_db(conn, user_input):
    cursor = conn.cursor()
    cursor.execute("SELECT response FROM responses WHERE LOWER(input) LIKE LOWER(?)", ('%' + user_input + '%',))
    result = cursor.fetchone()
    if result:
        return result[0]
    else:
        return None
#something not good, i forgot to manually install this
def close_db_connection(conn):
    conn.close()