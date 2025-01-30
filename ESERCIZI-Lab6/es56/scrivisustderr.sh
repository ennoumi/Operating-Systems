#! /bin/bash


while read LINEA 
	do
		PAROLA="${LINEA%% *}" # toglie il suffisso più lungo a partire dal primo spazio
		echo "$PAROLA" 1>&2
		echo "evviva"
	done
