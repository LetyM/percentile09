# Percentile 90
import pandas as pd
import numpy as np
import sys

file = sys.argv[1]
distance_column = sys.argv[2]
output_file = sys.argv[3]

df = pd.read_parquet(file)

df_sorted = df.sort_values(by=distance_column)
p = len(df) * 90 / 100
ceil_p = int(np.ceil(p))
df_90 = df[df[distance_column] > df_sorted.iloc[ceil_p][distance_column]]

df_90.to_csv(output_file)
