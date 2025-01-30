#! /bin/bash

if (( $# == 0 )) ; then
	echo "Manca un argomento" 
	exit 1
fi

FILE="$1"
COPIA="$1.copy"

if [[ ! -e $FILE ]] ; then
	echo "File non esiste"
	exit 2
fi

NUMERORIGHE=$( wc -l < $FILE )

NUMERORIGHEMENOUNA=$(( $NUMERORIGHE - 1 ))

# ESEMPIO
# HO NUMERORIGHE=50
# NUMERORIGHEMENOUNA=49
# tail -n numero mi permette di leggere le ultime righe di un file,
# quindi cosi facendo salto la prima riga
tail -n $NUMERORIGHEMENOUNA $FILE > $COPIA
head -n 1 $FILE >> $COPIA
