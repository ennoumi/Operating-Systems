#! /bin/bash

# OSSERVARE che
# sort -n -r --> -n indica che deve essere numerico e -r indica che deve esser inverso

# Controllo se sono stati passati gli argomenti
if (( $# != 1 )) ; then
	echo "Serve un argomento"
	exit 0
fi

# Controllo dell'esistenza del file
if [[ ! -e $1 ]] ; then
	echo "Il file $1 non esiste"
fi


# Leggo riga per riga, enumerandola
COUNT=0
while read RIGA ;
	do
		echo "$COUNT ${RIGA}"
		(( COUNT = $COUNT + 1 ))
	done < $1 | \
   sort -n -r | \
   while read CONTATORE RESIDUO ; do echo "$CONTATORE $RESIDUO" ; done
	
	
