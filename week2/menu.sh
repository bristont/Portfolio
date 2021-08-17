#!/bin/bash

./passwordCheck.sh

#if password is correct
if [ $? -eq 0 ]; then
    echo "Please select from a folder below:"
    echo "1.Create a folder"
    echo "2.Copy a folder"
    echo "3.Set a password"

        read -p "Selection:" option
    

else
    echo "Good Bye"
    
    exit 2
fi

            #if password is correct run case statement
            case $option in 
                            1)
                            #if first case is correct, create folder
                                ./folderCreator.sh
                                ;;
                            #if option 2, execute foldercopier script
                            2)
                                ./foldercopier.sh
                                ;;
                            #if option 3
                            3)
                                ./setPassword.sh
                                ;;
                            *)
                            #other inputs
                                echo "please enter a valid input"
                                exit 4
                                ;;
            esac    

        