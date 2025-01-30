#! /bin/bash

for (( NUM=0 ; ${NUM}<10 ; NUM=${NUM}+1 )) ; do    # dieci iterazioni
		./puntini.sh 30 1>&2 &   # ridirigo l'output (1) sullo stderr (2) e l'& alla FINE della riga indica che deve essere eseguito in bg
		echo -n "$! "         # $! restituisce il PID dell'ultimo processo in bg (quello apppena lanciato) -n stampa senza andare a capo
done
