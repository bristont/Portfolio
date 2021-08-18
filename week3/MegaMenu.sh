#!/bin/bash

#colours
Blue="\033[34m"
Green="\033[32m"
Red="\033[31m"
Purple="\033[35m"

./passwordCheck.sh

#if password is correct
if [ $? -eq 0 ]; then
    echo -e "${Blue}Please select from a folder below:"
    echo "1.Create a folder"
    echo "2.Copy a folder"
    echo "3.Set a password"
    echo "4.Calculator"
    echo "5.Create Week Folders"
    echo "6.Check Filenames"
    echo "7.Download a file"
    echo -e "${Purple}8.Exit"


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
                            4)
                                ./calculator.sh
                                ;;
                            5)
                                ./megafoldermaker.sh
                                ;;
                            6)
                                ./filenames.sh
                                ;;
                            7)
                                ./InternetDownloader.sh
                                ;;
                            8)
                                echo "Good bye"
                                exit 9
                                ;;
                            *)
                            #other inputs
                                echo "please enter a valid input"
                                exit 4
                                ;;
            esac    

        