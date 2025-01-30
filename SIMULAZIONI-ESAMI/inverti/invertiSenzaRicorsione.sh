#! /bin/bash

if (( $# != 1 )) ; then
	echo "Argomento mancante."
	exit 1
fi

if [[ ! -e $1 ]] ; then
	echo "Il file passato come argomento non esiste."
	exit 2
fi

NumRIGA=0 # contatore per numerare le righe
while read RIGA ;
	do
		echo "$NumRIGA $RIGA" # stampo il numero della riga e la riga stessa
		(( COUNT++ ))
	done < $1 | sort -n -r  | \
	
	# LEGGO LE RIGHE ORDINATE E STAMPO SOLO IL CONTENUTO, SENZA IL NumRIGA
	while read CONTATORE ALTRO ; do echo "$ALTRO" ; done
