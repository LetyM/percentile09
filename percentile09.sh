#!/bin/bash

# percentile09
echo "Welcome to percentile09"
echo "Please, provide the following"
read -p 'File extension [parquet/csv]: ' file_extension
case $file_extension in 
    'parquet' | 'csv')
    read -p 'File url: ' file_url
    read -p 'Distance column: ' distance_column
    read -p 'Output file path:' output_file
    python3 percentile90.py $file_url $distance_column $output_file
    echo "Process finished"

    break
    ;;
    *)
    echo "Invalid option"
    echo "Try parquet or csv"
    break
    ;;
esac

