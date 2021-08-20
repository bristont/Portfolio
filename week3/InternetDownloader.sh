#!/bin/bash
#Create while loop to download and specify where download is to happen

while read -p "Please type the URL of a file to download or type 'exit' to quit: " url; 
      read -p "Type the location of where you would like to download the file to:" file; do 
            wget -O $file.txt $url
done 
    
    
