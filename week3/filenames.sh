#!/bin/bash

FILENAME="filenames.txt"

LINES=$(cat $FILENAME)

for LINE in $LINES
do
    if [ -d "$LINE" ] ; then
        echo "$LINE - That’s a directory"
    elif [ -f "$LINE" ]; then
        echo "$LINE - That file exists"
    else
        echo "$LINE - I don’t know what that is!"
    fi
done
