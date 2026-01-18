import pandas as pd

# 1. Daten laden
file_path = "DataCoSupplyChainDataset.csv"
df = pd.read_csv(file_path, encoding='ISO-8859-1')

# Spaltennamen bereinigen (entfernt führende/anhängende Leerzeichen)
df.columns = df.columns.str.strip()

# 2. Datensatz verkleinern
df_filtered = df[df['Order Region'] == 'Western Europe'].copy()

# 3. Spalten auswählen (Wir lassen das problematische Datum erst mal weg, um sicherzugehen)
columns_to_keep = [
    'Type', 
    'Days for shipping (real)', 
    'Days for shipment (scheduled)',
    'Order Region', 
    'Delivery Status', 
    'Late_delivery_risk', 
    'Category Name', 
    'Customer City', 
    'Order Item Total'
]

# Wir prüfen, ob die Spalten wirklich da sind, bevor wir filtern
existing_columns = [col for col in columns_to_keep if col in df_filtered.columns]
df_final = df_filtered[existing_columns]

# 4. Speichern
df_final.to_csv("SupplyChain_Cleaned_Small.csv", index=False)

print(f"Erfolg! Datei gespeichert mit {len(df_final)} Zeilen.")
print(f"Genutzte Spalten: {existing_columns}")