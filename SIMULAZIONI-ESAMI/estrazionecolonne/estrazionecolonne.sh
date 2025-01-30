#! /bin/bash

IFS=','

if (( $# == 0 )) ; then
	echo "Argomento mancante: Inserire l'indice da stampare."
	exit 1
fi

INDICE=$1

while read A B C D; 
	do
		if (( $INDICE == 1 )) ; then 
			echo $A ; 
		elif (( $INDICE == 2 )) ; then 
			echo $B ; 
		elif (( $INDICE == 3 )) ; then 
			echo $C ; 
		elif (( $INDICE == 4 )) ; then 
			echo $D ; 
		else
			echo "Indice non valido. I file hanno 4 colonne."
			exit 1
		fi
		
	done < file.csv

