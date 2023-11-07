# main_script.py
# first time making 3 script into one
# i have to for optimise
from chatbot_logic import main as chatbot_main
from database_handler import connect_to_db, create_responses_table, insert_response, get_response_from_db, close_db_connection

    #i forget about logger / debugger

if __name__ == "__main__":
    conn = connect_to_db()
    create_responses_table(conn)
    chatbot_main()
    close_db_connection(conn)
