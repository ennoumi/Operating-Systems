#! /bin/bash

# Controllo degli argomenti
if (( $# == 0 )) ; then
	echo "Manca argomento"
	exit 0
fi

NOMEFILE=$1
NOMEFILECOPIA=${NOMEFILE}.copy

if [[ ! -e ${NOMEFILE} ]] ; then
	echo "File non esiste"
	exit 0
fi

# CALCOLO IL NUMERO DELLE RIGHE
numeroRighe=$( wc -l < $NOMEFILE )

numeroRigheMENOuna=$(( $numeroRighe - 1 ))

# Creo il file di copia SENZA la prima riga
# quindi lego le ultime n-1 righe (ovvero tutte tranne la prima
tail -n $numeroRigheMENOuna $NOMEFILE > $NOMEFILECOPIA

# Adesso, aggiungo la prima riga alla fine della copia
head -n 1 $NOMEFILE >> $NOMEFILECOPIA


