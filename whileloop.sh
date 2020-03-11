#!/bin/bash

# --- This is a simple example of while loop

COUNT=0

while [ $COUNT -lt 10 ]
do
  # Display count
  echo "COUNT = $COUNT"
 
  # Increment count by 1
  ((COUNT++))
done

echo "while look finished"
exit 0
