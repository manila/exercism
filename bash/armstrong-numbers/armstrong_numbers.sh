#!/bin/bash
# Manuel Nila - Aug 2018

# Armstrong number

input_num=$1 # First Arg should be a whole number

calc_armstrong_num () {
	local i=0 #Keep track of loop
	local total=0 #Running total of calculation
	local digit_count="${#1}" #Count the number of digits in input
	local digit_array=$1 #copy the input for local scoping

	while [[ $i -lt $digit_count ]]; do #While is is less than number of digits in input
		total=$(( $total + ( ${digit_array:$i:1}**$digit_count ) )) # x = x + x ^ digit_count
		i=$(( $i + 1 ))
	done

	echo "$total"
}

if [[ $(calc_armstrong_num "$input_num") -eq $input_num ]]; then #test equality of armstrong calc and input number
	echo "true"
	exit 0
else
	echo "false"
	exit 1
fi
