#! /bin/bash

# Come nell'esercizio precedente per poter usare sort devo separare la stringa in caratteri distinti
# che poi conto con uniq -c

STRINGA=$1
CONT=0

for (( CONT=0 ; $CONT < ${#STRINGA} ; CONT=$CONT+1 )) ; 
	do
		echo "${STRINGA:${CONT}:1}"
		
	done | sort | uniq -c | while read NUMERO CARATTERE ; do echo "$CARATTERE $NUMERO" ; done
	
