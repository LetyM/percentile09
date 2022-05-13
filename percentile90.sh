# percentile90

echo "Welcome to percentile90"
read -p 'File extension [parquet/csv]: ' file_extension
case $file_extension in 
    'parquet' | 'csv')
    read -p 'File url: ' file_url
    read -p 'Distance column: ' distance_column
    python3 percentile90.py $file_url $distance_column
    echo "Process finished"

    break
    ;;
    *)
    echo "Invalid option"
    break
    ;;
esac

