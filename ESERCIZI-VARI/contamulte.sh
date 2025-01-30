#! /bin/bash

ValoreMultaPrecedente=""
CONT=1

# CONTROLLO INTANTO SE POSSO LEGGERE TUTTI I DATI 
while read NOME COGNOME VALORE GIORNO MESE ANNO ; 
do 
	if [[ -z $NOME || -z $COGNOME || -z $VALORE || -z $GIORNO || -z $MESE || -z $ANNO || -n $ALTRO ]] ; then
		echo "read found no dato, stop"
		exit 1
	fi

	# inizio leggendo la prima riga
	if [[ $ValoreMultaPrecedente == "" ]] ; then
		ValoreMultaPrecedente=$VALORE
		CONT=1
	else
	# se non è la prima riga, controllo se VALMP=VAL
		if [[ $ValoreMultaPrecedente == $VALORE ]] ; then
			CONT=$((CONT+1))
		else
			# Se non lo è, allora è un valore diverso e quindi stampo il numero dei valori e passo a quello attuale
			echo "$ValoreMultaPrecedente $CONT"
			ValoreMultaPrecedente=$VALORE
			CONT=1
		fi	
	fi
	
done
