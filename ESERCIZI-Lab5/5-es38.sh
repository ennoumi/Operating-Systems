#! /bin/bash

# CONTROLLO SE è STATO PASSATO UN ARGOMENTO
if [[ $# != 1 ]] ; then
	echo "ERRORE! Nessun argomento passato"
	exit 1
fi

# CONTROLLO CHE L'ARGOMENTO PASSATO SIA LEGGIBILE
if [[ ! -r $1 ]] ; then
	echo "Il file $1 non esiste" 
	exit 2
fi

while read PRIMA SECONDA TERZA ; do
	if [[ -n ${SECONDA} ]] ; then
		OUT="${OUT}${SECONDA}"
	fi
done < $1

echo $OUT
