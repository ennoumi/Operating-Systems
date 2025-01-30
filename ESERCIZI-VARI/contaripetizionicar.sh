#! /bin/bash



# Devo data una stringa in input riuscire a realizzare uno script
# che stampi : [ numero ripetizioni carattere ] [ carattere ]
# OSSERVARE che:
# sort --> ordina le righe. Per ordinare i caratteri di una stringa devo separarli in righe distanze, per poi passarlo in pipe a sort
# uniq -c --> conta le occorrenze di ciascun carattere


# Intanto mi assicuro che l'utente abbia fornito un argomento

if (( $# == 0 )) ; then
	echo "Fornire un argomento"
	exit 0 
fi

# Come ho detto in precedenza dovrei, per poter usare sort, separare la stringa in caratteri distinti
# Mi servo di un ciclo che scorre la riga, stampando carattere per carattere (quindi un carattere per ogni posizione)

VAR=$1
CONT=0
for (( CONT=0 ; $CONT < ${#VAR} ; CONT=$CONT+1 )) ; # ciclo che itera da zero fino alla length di VAR
	do
	# Adesso stampo il carattere alla posizione count
		echo "${VAR:${CONT}:1}"
	done | sort | uniq -c
	
	
# ALTRIMENTI POSSO RISOLVERE TUTTO IN UN'UNICA RIGA:
STRINGA=$1

echo "$STRINGA" | fold -w1 | sort | uniq -c 
