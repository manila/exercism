#!/bin/bash
# Manuel Nila - August 2018

# Hello, X

if [[ $# -gt 1 ]]; then
	exit 1
elif [[ $1 ]]; then
	echo "Hello, $1"
	exit 0
else
	echo 'Usage: ./error_handling <greetee>'
	exit 1
fi
