#! /bin/bash


if (( $# != 2 )) ; then
	echo "Corretto uso: <cartella_sorgente> <cartella_destinazione>"
	exit 1
fi

SORGENTE="$1"
DESTINAZIONE="$2"

if [[ ! -d "${SORGENTE}" ]] ; then
	echo "La directory di origine non esiste." 
	exit 2
fi	

if [[ ! -d "${DESTINAZIONE}" ]] ; then
	echo -e "La cartella di destinazione non esiste. Procedo alla sua creazione ...\n Creata" 
	mkdir "$DESTINAZIONE"
fi	


find "$SORGENTE" -type f -name "*.txt" | while read file ; do	
	if [[ -s "$file" ]] ; then
		cp "$file" "$DESTINAZIONE"
	fi
done
