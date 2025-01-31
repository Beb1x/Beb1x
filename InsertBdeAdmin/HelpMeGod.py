import struct

cfg_file = 'C:\\PentruData\\Beb1x\\InsertBdeAdmin\\idapi32.cfg'

def encode_entry(key, value):
    encoded_key = key.encode('utf-16le') + b'\x00\x00'
    encoded_value = value.encode('utf-16le') + b'\x00\x00'
    return b'\x03' + encoded_key + b'\x04' + encoded_value

def add_mssql_shortcut(cfg_file, new_entry):
    with open(cfg_file, 'rb') as f:
        content = f.read()
    new_shortcut = b""
    new_shortcut += encode_entry("TYPE", "MSSQL")
    new_shortcut += encode_entry("DATABASE NAME", new_entry["database_name"])
    new_shortcut += encode_entry("SERVER NAME", new_entry["server_name"])
    new_shortcut += encode_entry("USER NAME", new_entry["user_name"])
    new_shortcut += encode_entry("OPEN MODE", "READ/WRITE")
    new_shortcut += encode_entry("SCHEMA CACHE SIZE", "8")
    new_shortcut += encode_entry("BLOB EDIT LOGGING", "FALSE")
    new_shortcut += encode_entry("LANGDRIVER", "")
    new_shortcut += encode_entry("SQLQRYMODE", "")
    new_shortcut += encode_entry("SQLPASSTHRU MODE", "SHARED AUTOCOMMIT")
    new_shortcut += encode_entry("DATE MODE", "0")
    new_shortcut += encode_entry("SCHEMA CACHE TIME", "-1")
    new_shortcut += encode_entry("MAX QUERY TIME", "30000")
    new_shortcut += encode_entry("MAX ROWS", "-1")
    new_shortcut += encode_entry("BATCH COUNT", "200")
    new_shortcut += encode_entry("ENABLE SCHEMA CACHE", "FALSE")
    new_shortcut += encode_entry("SCHEMA CACHE DIR", "")
    new_shortcut += encode_entry("HOST NAME", "")
    new_shortcut += encode_entry("APPLICATION NAME", "")
    new_shortcut += encode_entry("NATIONAL LANG NAME", "")
    new_shortcut += encode_entry("ENABLE BCD", "FALSE")
    new_shortcut += encode_entry("TDS PACKET SIZE", "4096")
    new_shortcut += encode_entry("BLOBS TO CACHE", "300")
    new_shortcut += encode_entry("BLOB SIZE", "300")
    new_shortcut += encode_entry("ShortLabel", new_entry["short_label"])
    databases_section = b'\x03\x20\x20\x20\x44\x41\x54\x41\x42\x41\x53\x45\x53\x20\x01\x20'
    databases_index = content.find(databases_section)

    if databases_index == -1:
        print("File content (first 100 bytes):")
        print(content[:100].hex())
        raise ValueError("DATABASES section not foudin the file.")
    insert_index = databases_index + len(databases_section)
    new_content = content[:insert_index] + new_shortcut + content[insert_index:]
    with open(cfg_file, 'wb') as f:
        f.write(new_content)
    print("New database configuration added suces!")
new_entries = [
    {"database_name": "DB1", "server_name": "192.168.1.1", "user_name": "user1", "short_label": "Alias1"},
    {"database_name": "DB1", "server_name": "192.168.1.1", "user_name": "user1", "short_label": "Alias1"}
]

for entry in new_entries:
    add_mssql_shortcut(cfg_file, entry)