import pyodbc
import configparser
import ReadExcellAndHost as REH
from ReadFromExcell import read_from_excel

# Replace these values with your actual database connection details
server = REH.ip_address_result



# Read database connection details from the configuration file
config = configparser.ConfigParser()
config.read('C:\\Serializare\\config\\parametri.config')
username = config.get('Settings', 'Username')
password = config.get('Settings', 'Password')
database_path = config.get('Settings', 'Database')
excel_file_path = config.get('Settings', 'PathExcell')
# Create a connection string
conn_str = f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database_path};UID={username};PWD={password}'


try:
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()
    all_values = read_from_excel(excel_file_path)

    for row_number, gtine_value, sne_value in all_values:
        GTINE = gtine_value
        SNE = sne_value
        print(f"Processing row_number={row_number}, GTINE={GTINE}, SNE={SNE}")

        # Your SQL query
        query = f"""
            WITH OrderedSerializareLog AS (
                SELECT TOP 15
                    ID,
                    GTIN,
                    SN,
                    Lot,
                    LotProd,
                    BBD,
                    BBDProd,
                    ConfirmatManual,
                    ROW_NUMBER() OVER (ORDER BY ID DESC) AS RowNum
                FROM SerializareLog
                WHERE sn LIKE '%{SNE}%' AND GTIN='{GTINE}'
            )
            SELECT 
                c.GTIN,
                c.SN,
                c.Lot,
                c.LotProd,
                c.BBD,
                c.BBDProd,
                c.ConfirmatManual,
                CASE 
                    WHEN c.Lot <> c.LotProd THEN 'Wrong Lot'
                    WHEN c.BBD <> CONVERT(VARCHAR, c.BBDProd, 12) THEN 
                        CASE 
                            WHEN CONVERT(DATE, c.BBD, 12) < GETDATE() THEN 'BBD Expired'
                            ELSE 'Wrong BBD'
                        END
                    WHEN c.SN <> ISNULL(previous.SN, c.SN) THEN 'Wrong SN'
                    WHEN c.ConfirmatManual = 1 THEN 'Human error'
                    ELSE 'OK' 
                END AS STATUS
            FROM OrderedSerializareLog c
            LEFT JOIN OrderedSerializareLog previous ON c.RowNum = previous.RowNum + 1
            ORDER BY c.ID DESC;
        """

        cursor.execute(query)
        results = cursor.fetchall()

        for result_row in results:
            print(row_number, GTINE, SNE, result_row.STATUS)

except pyodbc.Error as e:
    print(f"Error connecting to the database: {e}")

finally:
    if conn:
        conn.close()