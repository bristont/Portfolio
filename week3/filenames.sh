#!/bin/bash
# Set parameter for Filename as filenames.txt
FILENAME="filenames.txt"
# set parameter to read filename.txt
LINES=$(cat $FILENAME)

for LINE in $LINES
do
    if [ -d "$LINE" ] ; then
        echo "$LINE - That’s a directory" #determine if directory
    elif [ -f "$LINE" ]; then
        echo "$LINE - That file exists" #if not directory, determine is a file 
    else
        echo "$LINE - I don’t know what that is!" #other dont know what it is 
    fi
done
