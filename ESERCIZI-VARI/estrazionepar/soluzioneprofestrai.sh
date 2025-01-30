#! /bin/bash

# Trasformo IFS affinché il separatore dei campi nelle righe 
# diventi la virgola e l'andata a capo
IFS=$',\n'
SOMMA=0

while read PRIMA SECONDA TERZA ;
	do
		SOMMA=$(( SOMMA + SECONDA ))
		echo "$PRIMA, $TERZA"
	done < input1.txt
echo $SOMMA
