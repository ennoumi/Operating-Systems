#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

# Notare che metto una variabile in piu' delle 10 parole che devo leggere in ogni riga.

counter=0
while read v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 ; do
	# ciclo che scorre le variabili
	for (( i=0; $i<10; i=$i+1 )) ; do
		nomevar=v$i
		# ${!nomevar} restituisce i valori di v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 
		if [[ "${!nomevar}" == "int" ]] ; then
			((counter=${counter}+1))
		fi
	done
done < ./prova.txt

echo contate $counter parole \"int\"
