#! /bin/bash

# grep -B 1 --no-group-separator <word> CONSENTE DI METTERE IN OUTPUT
# ANCHE LA RIGA PRECEDENTE A QUELLA CHE CONTIENE LA WORD SELEZIONATA

# grep -v <word> METTE IN OUTPUT LE RIGHE CHE NON CONTENGONO LA WORD PASSATA

grep -B 1 --no-group-separator "SISTEMI OPERATIVI" lista.txt | grep -v "SISTEMI OPERATIVI" |
	while read MATRICOLA ALTRO ; do
	echo "$MATRICOLA"
	done 

	
# OPPURE
#	> tmp.txt
#	cat tmp.txt | grep -v "SISTEMI" 
#	rm tmp.txt
