#!/bin/bash
#Get user to enter password
read -sp 'Enter password:' pass_var
#create variable 1 that creates hash from password
var_a=$(echo "Enter password: $pass_var" | sha256sum)
#create variable 2 that looks at password file and hash
var_b=$(cat secret.txt)
#Compare two hashes to see if they are equal 
#if equal say "Access Granted" - Exit code 0
#if not equal "Access Denied" - Exit Code 1
if [ "$var_a" = "$var_b" ]; then
echo "Access Granted"
exit 0
else
echo "Access Denied"
exit 1
fi
