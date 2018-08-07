#!/bin/bash

# Manuel Nila - July 2018
# Calculate exponetial growth of grains

set -o errexit

squares=$1
total_grains=0
curr_square=0

if [[ "$squares" -lt 1 ]] || [[ "$squares" -gt 64 ]]; then
	echo "Error: invalid input"
	exit 1
else
	echo "2^($squares - 1)" | bc
fi

while [[ $curr_square -lt $squares ]]; do
	curr_square=$(( curr_square + 1))
	total_grains=$(( total_grains + (2**curr_square) )) 
done

echo "$number_of_grains"
