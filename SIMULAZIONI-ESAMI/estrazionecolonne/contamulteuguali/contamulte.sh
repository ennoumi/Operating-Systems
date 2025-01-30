#! /bin/bash

# Devo stampare VALORE_MULTA OCCORRENZA


while read NOME COGNOME VALORE GIORNO MESE ANNO ALTRO ;
	do
		OCCORRENZE=`grep "$VALORE" multe.txt | wc -l`

		echo "$VALORE $OCCORRENZE"
	done < multe.txt | uniq 
