#! /bin/bash

# PER SEMPLICITA' PRIMA REALIZZO UNA VERSIONE CHE NON PRENDE INPUT A RIGA DI COMANDO

SORGENTE="/home/naouresn/inshallAllahLabes/"
DESTINAZIONE="/home/naouresn/inshallAllahLabes/ciao"

# VERIFICO L'ESISTENZA DELLA CARTELLA DI SORGENTE
if [[ ! -d "$SORGENTE" ]] ; then
	echo "La cartella sorgente non esiste"
fi

# VERIFICO L'ESISTENZA DELLA CARTELLA DI DESTINAZIONE
if [[ ! -d "$SDESTINAZIONE" ]] ; then
	echo "La cartella di destinazione non esiste"
fi

find "$SORGENTE" -type f -name "*.txt" | while read file ; do
	cp "$file" "$DESTINAZIONE"
done

