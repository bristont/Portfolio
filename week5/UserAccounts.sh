#!/bin/bash
#using awk command to identify and export only bin/bash files from /etc/paswd, with first line setting up heading and second identifying the relevant fields to exract and match with "/bin/bash"
awk -F":" '
BEGIN {printf "%-8s %28s %-3s %-51s %-1s\n" , "| \033[34mUsername\033[0m" , "| \033[34mUserID\033[0m |" , "\033[34mGroupID\033[0m" , "| \033[34mHome\033[0m" , "| \033[34mShell\033[0m                                    |"
print "|___________________|________|_________|__________________________________________|__________________________________________|"
} 
$7=="/bin/bash" { printf("| \033[33m%-17s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-40s\033[0m | \033[35m%-40s\033[0m |\n", $1, $3, $4, $5, $6);
}' /etc/passwd