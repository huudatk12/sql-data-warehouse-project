import pandas as pd

df = pd.read_csv("source_crm/sales_details.csv")
print(df.info())
print(df.head())