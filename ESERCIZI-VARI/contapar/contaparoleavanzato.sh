#! /bin/bash

# Come dai suggerimenti devo:
# 1) usare sed per spezzare le righe del file in tante righe quante sono le parole
#    sostituendo gli spazi e i tab con delle andate a capo. In tal modo ciascuna
#    nuova riga conterra' solo una parola oppure sara' una riga vuota.
# 2) eliminare le righe vuote.
# 3) ordinare le righe cosi' ottenute in modo che le righe uguali siano
#    raggruppate. usare sort
# 4) usare uniq per contare le righe uguali
# 5) invertire la prima e la seconda parola dell'output per mettere
#    per prima la parola e per seconda il numero di volte che la parola compare.

# sed 's/ /\n/g' ./prova.txt | sed 's/\t/\n/g' | .......

# CONTROLLO DEGLI ARGOMENTI
if [[ $# == 0 ]] ; then
	echo "Serve un argomento"
	exit 1
fi

# CONTROLLO SE L'ARGOMENTO PASSATO È UN FILE
if [[ ! -f $1 ]] ; then
	echo "L'argomento passato non è un file"
	exit 2
fi

# CONTROLLO SE L'ARGOMENTO PASSATO È LEGGIBILE
if [[ ! -r $1 ]] ; then
	echo "L'argomento passato non è leggibile"
fi


sed 's/ /\n/g' $1 | sed 's/\t/\n/g' | 
	while read RIGA ; 
		do
			if [[ -n "$RIGA" ]] ; then
				echo "$RIGA"
			fi
		done | sort | uniq  -c | 
	while read NUMERO PAROLA ; 
		do
			echo "$PAROLA $NUMERO"
		done
