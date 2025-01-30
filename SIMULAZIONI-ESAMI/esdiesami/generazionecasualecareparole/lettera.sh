#! /bin/bash

# Genero un numero casuale tra 0 e 1
(( NUMERO=${RANDOM}%2 ))
 # Se il numero è 0 stampo a altrimenti c
if (( $NUMERO == 0 )) ; then
	echo -n "a"
else
	echo -n "c"
fi
