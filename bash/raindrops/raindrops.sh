#!/bin/bash
# Manuel Nila - August 2018

# Print Pling, Plang, Plong if number is divisable by 3,5,7

input=$1
output=""

if [[ $1%3 -eq 0 ]]; then
	output="Pling"
fi

if [[ $1%5 -eq 0 ]]; then
	output="$output""Plang"
fi

if [[ $1%7 -eq 0 ]]; then
	output="$output""Plong"
fi

if [ "${#output}" -eq 0 ]; then
	echo "$1"
else
	echo "$output"
fi
