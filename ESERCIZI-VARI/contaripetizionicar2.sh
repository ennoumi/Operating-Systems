#! /bin/bash

STRINGA=$1

echo $STRINGA | ( fold -w1 | sort | uniq -c ) > tmp.txt

while read NUMERO CARATTERE ;
	do
		echo "$CARATTERE $NUMERO"
	done < tmp.txt
	
rm tmp.txt
