#!/bin/bash
# Manuel Nila - August 2018

# Calculate Leap Year

if [ "$1" -eq "$1" -a $# -eq 1 ] 2>/dev/null; then # Check if input is a number by attempting a compare and check arg count
	if [[ ($1%4 -eq 0) && (($1%100 -ne 0) || ($1%400 -eq 0)) ]]; then # Check if leap year, divisible by 4 and not divisible by 100 or divisible by 400
		echo 'true'
		exit 0
	else
		echo 'false'
	fi
else
	echo 'Usage: leap.sh <year>'
	exit 1
fi
