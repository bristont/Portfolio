#!/bin/bash

#Welcome
echo "Welcome to the Guessing game!" 
echo "As set out in the name of the game the object is to guess the right number!!!"


#Note correct number 
answer=42


{



    while (( guess != answer )); do
	        read -p "Guess a number between 1 and 100  $num: " guess
	        if (( guess < answer )); then 
            echo "Higher..."
	        elif (( guess > answer )); then
		    echo "Lower..."
	fi
    done

}
echo "Correct"

echo "Thank you!"