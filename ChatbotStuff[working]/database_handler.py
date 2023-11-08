import sqlite3
#my favorite part
database = r'E:\ChatbotDB\chatbot.db'
conn = sqlite3.connect(database)

def connect_to_db():
    conn = sqlite3.connect(database)
    return conn

def create_responses_table(conn):
    cursor = conn.cursor()
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS chatbot_data (
        id INTEGER PRIMARY KEY,
        input TEXT NOT NULL,
        response TEXT NOT NULL,
        entity TEXT,
        entity_type TEXT,
        description TEXT
    )
    ''')
    conn.commit()


def insert_response(conn, input_text, response_text, entity=None, entity_type=None, description=None):
    cursor = conn.cursor()
    cursor.execute("INSERT OR REPLACE INTO chatbot_data (input, response, entity, entity_type, description) VALUES (?, ?, ?, ?, ?)",
                   (input_text, response_text, entity, entity_type, description))
    conn.commit()

def get_response_from_db(conn, user_input):
    cursor = conn.cursor()
    cursor.execute("SELECT response FROM chatbot_data WHERE LOWER(input) LIKE LOWER(?)", ('%' + user_input + '%',))
    result = cursor.fetchone()
    if result:
        return result[0]
    else:
        return None

def close_db_connection(conn):
    conn.close()
