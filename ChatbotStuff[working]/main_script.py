# main_script.py
#not my best, but not my worst
from chatbot_logic import main as chatbot_main
from database_handler import connect_to_db, create_responses_table, close_db_connection

if __name__ == "__main__":
    conn = connect_to_db()
    create_responses_table(conn)
    try:
        chatbot_main(conn)
    except Exception as e:
        print(f"An error occurred: {e}")
    close_db_connection(conn)
