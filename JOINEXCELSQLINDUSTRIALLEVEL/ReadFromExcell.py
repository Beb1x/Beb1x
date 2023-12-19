import os
import pandas as pd
import configparser

def read_from_excel(excel_file_path):
    all_values = []
    config = configparser.ConfigParser()
    config.read('C:\\Serializare\\config\\parametri.config')
    excel_file_path = config.get('Settings', 'PathExcell')
    for filename in os.listdir(excel_file_path):
        if filename.endswith('.xlsx') or filename.endswith('.xls'):
            excel_file_path = os.path.join(excel_file_path, filename)
            df = pd.read_excel(excel_file_path, dtype={'ProductCodeSent': str ,'SerialNoSent': str})
            for index, row in df.iterrows():
                row_number = index + 2
                gtine_value = row['ProductCodeSent']
                sne_value = row['SerialNoSent']
                all_values.append((row_number, gtine_value, sne_value))
    return all_values

# If you want to test the function
excel_path = 'C:\\Serializare'  # Use the path to your Excel files
all_values = read_from_excel(excel_path)

# Print the values with a larger width for GTIN
for row_number, gtine_value, sne_value in all_values:
    print(f"Row: {row_number}, GTIN: '{gtine_value}', SNE: {sne_value}")
