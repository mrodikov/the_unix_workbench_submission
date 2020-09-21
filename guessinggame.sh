#!/usr/bin/env bash

function readGuess {
	echo "Please guess how many files are in the current directory." >&2
	read num_files
	echo $num_files
}

real_num_files=$(ls -p | grep -v / | wc -l)
guessed=false
while [[ !guessed ]]
do
	guess=$(readGuess)
	if [[ $real_num_files -gt $guess ]]
	then
		echo "Too low"
	elif [[ $real_num_files -lt $guess  ]]
	then
		echo "Too high"
	else
		break
	fi
done
echo "Congrats!"
# line #19
# line #20
# line 21, are you happy now?
