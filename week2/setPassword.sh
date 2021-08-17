#!/bin/bash
#user to type a folder name
read -p 'folder name: ' folderName
#create password
read -sp "Enter password:" pass_var
echo
#creation of password file
echo "Enter password: $pass_var" | sha256sum > secret.txt
exit
