import sqlite3

# Specify the database file path
db_path = "E:/ChatbotDB/chatbot_responses.db"

conn = sqlite3.connect(db_path)

    #i forget about logger / debugger
cursor=conn.cursor()
# SQL command to create a table
cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS responses (
        input TEXT PRIMARY KEY,
        response TEXT
    )
''')
# Execute the SQL command to create the table
# Commit the changes to the database
conn.commit()
#best thing is that i love sql :D

new_input = "new_user_input"
new_response = "new_chatbot_response"

cursor.execute("INSERT INTO responses (input, response) VALUES (?, ?)", (new_input, new_response))
conn.commit()

user_input = "user_input_to_query"
cursor.execute("SELECT response FROM responses WHERE input = ?", (user_input,))
result = cursor.fetchone()
#easy for me but i do not
#know very much about
#documenting

# i like clear writing
if result:
    response = result[0]
else:
    response = "I'm not sure how to respond to that."
#me to
print("Chatbot:", response)
conn.close()
