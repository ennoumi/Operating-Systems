#! /bin/bash

# prende un argomento intero a riga di comando, che indica il numero di script
# figli da lanciare

# Controlla l'argomento che gli è stato passato
# Se l'argomento > 0, lo script lancia in bg lo script stesso tanto volte quante
# il valore dell'argomento intero e passa come argomento a ciascuno script 
# quel valore intero diminuito di 1. Poi lo script attende la fine di tutti i suoi
# processi figli. Poi stampa a video l'argomento che gli è stato passato.
# Ingine termina restituendo 0.

# Se l'argomento è uguale a zero, lo script stampa a video l'argomento che gli è stato passato
# e poi termina e restituisce zero.

# Lo script prende come argomento UN SOLO ARGOMENTO INTERO (quindi uso $1 e non $#)

# Verifico che sia stato passato un solo argomento:
if (( "$#" != 1 )) ; then
	echo "Seve un solo argomento intero"
	exit 1
fi
# Verifico che l'argomento passato sia maggiore di 0
if (( "$1" < 0 )) ; then
	echo "Serve un solo argomento positivo"
	exit 1
fi

# Se l'argomento passato è uguale a 0 devo stamparlo e terminare con 0
if [[ "$1" == 0 ]] ; then
	echo "$1"
	exit 0
fi

if [[ "$1" -gt 0 ]] ; then
	NUMFIGLI=$1
	# lancio in bg passando xcome argomento 
	for (( i=0 ; $i < $NUMFIGLI ; i=$i+1 )) ; 
		do
			./discendenti.sh $(( ${NUMFIGLI}-1 )) &
		done
	
	wait
	
	echo $NUMFIGLI
	exit 0
fi
