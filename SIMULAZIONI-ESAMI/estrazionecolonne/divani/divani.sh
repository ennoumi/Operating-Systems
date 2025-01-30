#!/bin/bash

if (( $# != 2 )) ; then 
 echo "errore: servono 2 argomenti: larghezza_minima  altezza_massima"
 exit 1
fi

LARGMIN=$1
ALTMAX=$2

# ORA nelle due variabili ci sono i parametri passati a riga di comando.
# Da qui in poi aggiungete quello che serve.
# Leggete il contenuto del file ./divani.txt
# ed usatelo opportunamente.

# Stampare a schermo i divani che:
# 1) hanno larghezza maggiore o uguale a quella passate come primo argomento
# 2) hanno altezza minore o uguale della altezza passata come secondo argomento


# Il file è fatto di: divano larghezza altezza profondita

while read DIVANO LARGHEZZA ALTEZZA PROFONDITA ALTRO ;
	do
		if (( $LARGHEZZA >= $LARGMIN && $ALTEZZA <= $ALTMAX )) ; then
			echo "$DIVANO $LARGHEZZA $ALTEZZA $PROFONDITA"
		fi
	done < divani.txt

