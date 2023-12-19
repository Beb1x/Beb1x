import pyodbc
import configparser
import ReadExcellAndHost as REH


# Replace these values with your actual database connection details
server = REH.ip_address_result




# Read database connection details from the configuration file
config = configparser.ConfigParser()
config.read('C:\\Serializare\\config\\parametri.config')
username = config.get('Settings', 'Username')
password = config.get('Settings', 'Password')
database_path = config.get('Settings', 'Database')

# Create a connection string
conn_str = f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database_path};UID={username};PWD={password}'

SeeQuery= configparser.ConfigParser()
SeeQuery.read=('C:\\Serializare\\config\\query.txt')
# Connect to the database
try:
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()

    # Your SQL query
    query =  """
    select*from suntbou
    """

    cursor.execute(query)

    results = cursor.fetchall()

    for row in results:
        print(row)

except pyodbc.Error as e:
    print(f"Error: {e}")

finally:
    if conn:
        conn.close()
