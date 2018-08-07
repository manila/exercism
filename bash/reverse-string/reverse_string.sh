#!/bin/bash
# Manuel Nila - August 2018

# Reverse a string

old_str=$1
new_str=""
length="${#old_str}"

while [ $length -gt 0 ]; do
	length=$(( $length-1 ))
	new_str="$new_str""${old_str:$length:1}"
done

echo "$new_str"
