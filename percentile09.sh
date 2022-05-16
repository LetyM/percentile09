#!/bin/bash

# percentile09
echo "Welcome to percentile09"
echo "Please, provide the following"

read -p 'File url: ' file_url
read -p 'Distance column: ' distance_column
read -p 'Output file name:' output_file
python3 percentile09.py $file_url $distance_column $output_file
echo "Process finished"


