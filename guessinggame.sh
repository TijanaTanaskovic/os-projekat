#!/usr/bin/env bash
#File: guessinggame.sh

function myfunction {
  echo "Congratulations user, your answer is correct! "
}
flag=3 #arbitrarily set to 3
files_number=$( ls -l | egrep ^- | wc -l )
while [[ flag -eq 3 ]]
do
	echo "Enter a number of files that exists in current directory: "
	read guess
	if [[ $guess -ne $files_number ]]
	then 
		if [[ $guess -gt $files_number ]]
		then
			echo "HIGH guess.Please, try again."
			flag=3
		elif [[ $guess -lt $files_number ]]
		then
			echo "Low guess.Please, try again."
			flag=3
		else
			echo "Enter a valid answer!"
			flag=3
		fi	
	elif [[ $guess -eq $files_number ]]
	then
		myfunction
		flag=2
	fi
done	
