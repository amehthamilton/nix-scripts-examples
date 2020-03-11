#!/bin/bash

# This is a simple script that reads a file. The name of the file needs
# to be passed as a parameter.
COUNT=1

while IFS='' read -r LINE
do
    echo "LINE $COUNT: $LINE"
    ((COUNT++))
done < "$1"

exit 0