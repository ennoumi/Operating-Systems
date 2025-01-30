#! /bin/bash


( grep -B 1 --no-group-separator 'OPERATIVI' lista.txt ) | grep -v "OPERATIVI" > tmp.txt

while read MATRICOLA NOME COGNOME ALTRO ; 
	do
		echo $MATRICOLA
	done < tmp.txt

rm tmp.txt

# altrimenti si poteva fare come:

# cat lista.txt | grep -B 1 --no-group-separator OPERATIVI | grep -v OPERATIVI | while read MATRICOLA COGNOME NOME ; do echo $MATRICOLA ; done 

