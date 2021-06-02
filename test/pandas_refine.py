import pandas as pd 

df = pd.read_csv("data.csv")

df = df.drop_duplicates(['shipid', 't'], keep = 'first')

df.to_csv(path_or_buf = "data_out.csv", index=False)