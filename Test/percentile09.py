# Percentile 09
import pandas as pd
import numpy as np
import sys

file = sys.argv[1]
distance_column = sys.argv[2]
output_file_name = sys.argv[3]

print('Reading parquet file')
df = pd.read_parquet(file)

print('Sorting and calculating percentile 0.9')
df_sorted = df.sort_values(by=distance_column)
p = len(df) * 90 / 100
ceil_p = int(np.ceil(p))

print('Filtering by percentile')
df_90 = df[df[distance_column] > df_sorted.iloc[ceil_p][distance_column]]

print('Writing result')
df_90.to_csv(f"Output/{output_file_name}.csv")

