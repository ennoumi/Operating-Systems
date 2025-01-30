# Devo leggere il file preso in input e copiarlo in un file che termina con
# copy.
# Successivamente devo rimuovere la prima riga dal file di copia.
# Poi la nuova prima riga (che ora è la seconda) la agiungo alla fine del file.


#! /bin/bash

if (( $# == 0 )) ; then
	echo "Manca un argomento." 
	exit 1
fi

FILE="$1"
COPIA="$1.copy"

if [[ ! -f $FILE ]] ; then
	echo "L'argomento non è un file."
	exit 2
fi

# Memorizzo la prima riga in una variabile che mando in coda a un altro file
counter=0
PRIMARIGA=""
while read RIGA ;
	do
		if (( $counter == 0 )) ; then
			PRIMARIGA="${RIGA}"
		else
			echo "$RIGA"
		fi
		
		(( counter++ ))
	done < "$FILE" > "$COPIA"

echo "$PRIMARIGA" >> "$COPIA"
