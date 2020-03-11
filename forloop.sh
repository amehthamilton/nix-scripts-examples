#!/bin/bash

# This is an example of a for loop

# the $@ holds all of the parameters that the user type in one array
NAMES=$@

for NAME in $NAMES
do
    echo "Hello $NAME"
done

echo "for loop terminated"
exit 0