#! /bin/bash

#!/bin/bash

# analizzare il contenuto del file di cui e' passato il percorso come argomento
# e generare una sequenza di righe del tipo:    numero parola
# che dice quali parole sono contenute nel file
# e quante volte sono ripetute.
# Ad esempio, se il file contenesse le righe:
#
#  alfa beta gamma gatto
#  gatto cane pesce gatto
#  beta gatto
#
#  beta gatto
#
# allora l'output dovrebbe essere:
#
#  alfa 1
#  beta 2
#  gamma 1
#  gatto 4
#  cane 1
#  pesce 1
#
#  eventualmente con le righe elencate in un ordine diverso.


# Suggerimenti:
# 1) usare sed per spezzare le righe del file in tante righe quante sono le parole
#    sostituendo gli spazi e i tab con delle andate a capo. In tal modo ciascuna
#    nuova riga conterra' solo una parola oppure sara' una riga vuota.
# 2) eliminare le righe vuote.
# 3) ordinare le righe cosi' ottenute in modo che le righe uguali siano
#    raggruppate. usare sort
# 4) usare uniq per contare le righe uguali
# 5) invertire la prima e la seconda parola dell'output per mettere
#    per prima la parola e per seconda il numero di volte che la parola compare.

# sed 's/ /\n/g' ./prova.txt | sed 's/\t/\n/g' | .....

if (( $# == 0 )) ; then
	echo "Manca un argomento."
	exit 1
fi

FILE="$1"

if [[ ! -f $FILE ]] ; then 
	echo "L'argomento non è un file."
	exit 2
fi


if [[ ! -r $FILE ]] ; then
	echo "L'argomento non è leggibile."
	exit 3
fi
	
sed 's/ /\n/g' $FILE | sed 's/\t/\n/g' | 
	while read RIGA ; 
		do
			if [[ -n $RIGA ]] ; then
				echo $RIGA
			fi
		done | sort | uniq -c | while read NUMERO PAROLA ; do echo $PAROLA $NUMERO ; done
