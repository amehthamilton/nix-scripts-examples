#!/bin/bash

# This is an example of for loop and break

NAMES=$@

for NAME in $NAMES
do
    if [ $NAME = "Tracy" ]
    then
        #break
        continue
    fi

    echo "Hello $NAME"
done

echo "for loop terminated"
exit 0