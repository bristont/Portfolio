#!/bin/bash
# give user option on what to download or to quit
read -p "Please type the URL of a file to download or type exit to quit:" option
#use case statement to give options and if option to download selected then continue to loop
    case $option in 
                    https://*) 
                                read -p "Type location of where to save download:" location
                                $location > output.txt
                                


                    exit)
                        echo "Good bye"
                        exit 0 