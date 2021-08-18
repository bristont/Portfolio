# !/bin/bash

# Take user Input
echo "Welcome to simple calculator"
echo "Enter Two numbers : "
read a
read b

# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

# Switch Case to perform

#colours
Blue="\033[34m"
Green="\033[32m"
Red="\033[31m"
Purple="\033[35m"

# calculator operations
case $ch in
1)res=`echo $a + $b | bc`
echo -e "${Blue}Result:" $res
;;
2)res=`echo $a - $b | bc`
echo -e "${Green}Result:" $res
;;
3)res=`echo $a \* $b | bc`
echo -e "${Red}Result:" $res
;;
4)res=`echo "scale=2; $a / $b" | bc`
echo -e "${Purple}Result:" $res
;;
esac
exit 0
