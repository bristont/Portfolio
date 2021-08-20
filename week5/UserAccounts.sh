#!/bin/bash
#output /etc/passwd file for selected fields to input2.txt
#awk -F: '$7-/\/[b][a-z][a-z]\/[b][a-z][a-z][a-z]/' /etc/passwd

awk -F":" '
BEGIN {printf "%-8s %28s %-3s %-51s %-1s\n" , "| \033[34mUsername\033[0m" , "| \033[34mUserID\033[0m |" , "\033[34mGroupID\033[0m" , "| \033[34mHome\033[0m" , "| \033[34mShell\033[0m |"
print "|___________________|________|_________|__________________________________________|__________________________________________|"
}
{printf("| \033[33m%-17s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-40s\033[0m | \033[35m%-40s\033[0m | \033[33m%-1s\033[0m |\n", $1, $3, $4, $5, $6=="/bin", $6);
}''$7-/\/[b][a-z][a-z]\/[b][a-z][a-z][a-z]/' /etc/passwd

#awk -F: '{print $1,$3,$4,$6,$7}' /etc/passwd > input2.txt 

#find lines that end in with "bash" in input2.txt and return these lines only export to input3.txt
# ".bash$" > input3.txt

#take these lines and place in a table
#awk 'BEGIN 
#    /*.bash$/ {} 
 #
# {
#    FS=":";
#
#    print "| \033[34mUsername\033[0m | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome\033[0m | \033[34mShell\033[0m";
#
#    print "______________________________________________________________________";
#}
# {
#
#    printf("| \033[33m%\033[0m | \033[35m%-6s\033[0m | \033[35m%-6s\033[0m | \033[35m%-20s\033[0m | \033[35m%-15s\033[0m\n", $1, $2, $3, $4, $5);
#
#}
#END {
#
#    print("________________________________");
#
#}' input3.txt
