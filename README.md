# percentile09
Percentile09 returns, given a parquet file, a csv file with all the trips over 0.9 percentile in distance traveled.

## Content

* percentile09.sh: It runs the percentile09.py script. Needs you to provide:
- An input file url with parquet extension.
- The column's name with the distance data.
- A name for the output csv file.

* percentile09.py: Reads the parquet file, calculates the percentile and returns the csv file with all the rows that meet criteria.

* requirements.txt: Packages needed to run the script.

* 'Output' folder: The destiny path of our results.

* 'Test' folder: Contains the percentile09_test.sh script, a copy of percentile09.sh but with the inputs (url, column name, output file name) already provided.

## How to test it?

Go to 'Test' and run percentile09_test.sh. It'll run the proccess with an example url and return the result into 'Test/Output' folder.
