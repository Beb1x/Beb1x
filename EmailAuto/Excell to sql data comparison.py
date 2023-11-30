import os
import pandas as pd
import pyodbc
from datetime import datetime

def connect_to_sql_server(server, database, username, password):
    connection_str = f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    return pyodbc.connect(connection_str)

def execute_sql_query(connection, query):
    cursor = connection.cursor()
    cursor.execute(query)
    rows = cursor.fetchall()
    return rows

def process_excel_file(file_path):
    df = pd.read_excel(file_path)
    df['raspuns'] = ''

    for index, row in df.iterrows():
        gtin = row['GTIN']
        sn = row['SN']
        bbd_database = row['bbd']  # assuming the column names in your Excel file
        bbd_prod = row['bbdprod']
        lot = row['lot']
        lotprod = row['lotprod']

        query = f"SELECT YourTable.gtin, YourTable.lot, YourTable.bbd, YourTable.sn, " \
                f"YourTable.lotprod, YourTable.bbdprod, YourTable.ConfirmatManual, " \
                f"YourTable.Raspuns FROM YourTable " \
                f"WHERE gtin='{gtin}' AND sn LIKE '%{sn}%'"

        connection = connect_to_sql_server('your_server', 'TEST5', 'Tester', 'T3sTer!')
        result = execute_sql_query(connection, query)

        if result:
            gtin_db = result[0][0]
            sn_db = result[0][3]
            lot_db = result[0][1]
            bbd_db = result[0][2]

            bbd_database = datetime.strptime(bbd_database, '%y%m%d').date()  # assuming the date format is YYMMDD
            bbd_prod = datetime.strptime(bbd_prod, '%Y-%m-%d').date()

            if gtin != gtin_db:
                df.at[index, 'raspuns'] = 'GTIN INCORRECT'
            elif len(gtin) > len(gtin_db) and result[0][6] == 1:
                df.at[index, 'raspuns'] = 'GTIN INTRODUS GRESIT'
            elif sn != sn_db:
                df.at[index, 'raspuns'] = 'SN INCORRECT'
            elif len(sn) > len(sn_db) and result[0][6] == 1:
                df.at[index, 'raspuns'] = 'SN INTRODUS GRESIT'
            elif lot != lot_db and result[0][6] == 1:
                df.at[index, 'raspuns'] = 'lot INTRODUS GRESIT'
            elif bbd_database != bbd_db and result[0][6] == 1:
                df.at[index, 'raspuns'] = 'BBD INTRODUS GRESIT'
            elif lot != lotprod:
                df.at[index, 'raspuns'] = 'Incorrect lot'
            elif bbd_database != bbd_prod:
                df.at[index, 'raspuns'] = 'BBD INCORRECT'
            elif bbd_prod < datetime.now().date():
                df.at[index, 'raspuns'] = 'BBD EXPIRAT'

    df.to_excel(file_path, index=False)

def main():
    folder_path = 'C:/AutoSeri/NeAtinse/'
    for filename in os.listdir(folder_path):
        if filename.endswith('.xlsx') or filename.endswith('.xls'):
            file_path = os.path.join(folder_path, filename)
            name_we_need = filename.replace('SRL', '').replace('SC', '').strip()

            process_excel_file(file_path)

if __name__ == "__main__":
    main()

###
#import os
#import pandas as pd
#import pyodbc
#from datetime import datetime
#
#def connect_to_sql_server(server, database, username, password):
#    connection_str = f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
#    return pyodbc.connect(connection_str)
#
#def execute_sql_query(connection, query):
#    cursor = connection.cursor()
#    cursor.execute(query)
#    rows = cursor.fetchall()
#    return rows
#
#def process_excel_file(file_path):
#    df = pd.read_excel(file_path)
#    df['raspuns'] = ''
#
#    for index, row in df.iterrows():
#        gtin = row['GTIN']
#        sn = row['SN']
#        bbd_database = row['bbd'] 
#        bbd_prod = row['bbdprod']
#        lot = row['lot']
#        lotprod = row['lotprod']
#
#        query = f"SELECT YourTable.gtin, YourTable.lot, YourTable.bbd, YourTable.sn, " \
#                f"YourTable.lotprod, YourTable.bbdprod, YourTable.ConfirmatManual, " \
#                f"YourTable.Raspuns FROM YourTable " \
#                f"WHERE gtin='{gtin}' AND sn LIKE '%{sn}%'"
#
#        connection = connect_to_sql_server('your_server', 'TEST5', 'Tester', 'T3sTer!')
#        result = execute_sql_query(connection, query)
#
#        if result:
#            gtin_db = result[0][0]
#            sn_db = result[0][3]
#            lot_db = result[0][1]
#            bbd_db = result[0][2]
#
#            bbd_database = datetime.strptime(bbd_database, '%y%m%d').date()  # assuming the date format is YYMMDD
#            bbd_prod = datetime.strptime(bbd_prod, '%Y-%m-%d').date()
#
#            if gtin != gtin_db:
#                df.at[index, 'raspuns'] = 'GTIN INCORRECT'
#            elif len(gtin) > len(gtin_db) and result[0][6] == 1:
#                df.at[index, 'raspuns'] = 'GTIN INTRODUS GRESIT'
#            elif sn != sn_db:
#                df.at[index, 'raspuns'] = 'SN INCORRECT'
#            elif len(sn) > len(sn_db) and result[0][6] == 1:
#                df.at[index, 'raspuns'] = 'SN INTRODUS GRESIT'
#            elif lot != lot_db and result[0][6] == 1:
#                df.at[index, 'raspuns'] = 'lot INTRODUS GRESIT'
#            elif bbd_database != bbd_db and result[0][6] == 1:
#                df.at[index, 'raspuns'] = 'BBD INTRODUS GRESIT'
#            elif lot != lotprod:
#                df.at[index, 'raspuns'] = 'Incorrect lot'
#            elif bbd_database != bbd_prod:
#                df.at[index, 'raspuns'] = 'BBD INCORRECT'
#            elif bbd_prod < datetime.now().date():
#                df.at[index, 'raspuns'] = 'BBD EXPIRAT'
#
#    df.to_excel(file_path, index=False)
#
#def main():
#    folder_path = 'C:/AutoSeri/NeAtinse/'
#    for filename in os.listdir(folder_path):
#        if filename.endswith('.xlsx') or filename.endswith('.xls'):
#            file_path = os.path.join(folder_path, filename)
#            name_we_need = filename.replace('SRL', '').replace('SC', '').strip()
#
#            process_excel_file(file_path, name_we_need)
#
#if __name__ == "__main__":
#    main()
###
#def process_excel_file(file_path, name_we_need):
#  
#