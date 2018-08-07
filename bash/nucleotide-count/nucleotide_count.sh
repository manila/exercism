#!/bin/bash
# Manuel Nila - August 2018

# Count Letters in a string

i=0
dna=$1
length="${#dna}"
A=0
C=0
G=0
T=0

while [ $i -lt $length ]; do
	case "${dna:i:1}" in
		A) A=$(( $A+1 ));;
		C) C=$(( $C+1 ));;
		G) G=$(( $G+1 ));;
		T) T=$(( $T+1 ));;
		*) echo "Invalid nucleotide in strand"; exit 1;;
	esac
	i=$(( $i+1 ));
done

echo -e "A: $A\nC: $C\nG: $G\nT: $T"
exit 0
