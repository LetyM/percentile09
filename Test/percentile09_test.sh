#!/bin/bash

# percentile09 test
echo "Welcome to percentile09 test"

echo 'File url: https://nyc-tlc.s3.amazonaws.com/trip+data/yellow_tripdata_2022-01.parquet'
export file_url='https://nyc-tlc.s3.amazonaws.com/trip+data/yellow_tripdata_2022-01.parquet'

echo 'Distance column: trip_distance' 
export distance_column='trip_distance'

echo 'Output file name: percentile09' 
export output_file='percentile09'

python3 percentile09.py $file_url $distance_column $output_file
echo "Process finished"


