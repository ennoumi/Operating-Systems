#! /bin/bash

# DEVO STAMPARE: NumeroVolteCheQuelCarattereCompare Carattere

if (( $# == 0 )) ; then
	echo "Argomento mancante"
	exit 1
fi

STRINGA="$1"
LUNGHEZZASTRINGA="${#STRINGA}"

	for (( i=0 ; $i < $LUNGHEZZASTRINGA ; i=$i+1 )) ; 
		do
			# ERRORE STUPIDO: contatore all'interno di un for che si incrementa da solo
			# carattere=${STRINGA:$i:1}
			# echo $carattere
			# (( carattere++ ))
			
			echo "${STRINGA:$i:1}"
			
		done | sort | uniq -c 
