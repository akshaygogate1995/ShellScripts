Name,Age,Location
John,30,New York
Jane,25,Los Angeles
Bob,35,Chicago

You can use the following shell script to read and process this CSV data:

#!/bin/bash

# Set the IFS to a comma to split fields
IFS=','

# Read the CSV file line by line
while read -r name age location; do
    echo "Name: $name"
    echo "Age: $age"
    echo "Location: $location"
    echo
done < data.csv
