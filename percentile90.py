# Percentile 90
import pandas as pd
import numpy as np
import sys

file = sys.argv[1]
distance_column = sys.argv[2]

df = pd.read_csv(file)

df_sorted = df.sort_values(by=distance_column)
p = len(df) * 90 / 100
ceil_p = int(np.ceil(p))
df_90 = df[df[distance_column] > df_sorted.iloc[ceil_p][distance_column]]

df_90.to_csv('percentile90.csv')

# python3 percentile90.py "C:\Users\Let\Documents\PythonScripts\yellow_tripdata_2022-01.csv" "trip_distance"
