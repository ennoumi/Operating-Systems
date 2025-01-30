#! /bin/bash

# Devo realizzare uno script che stampa a video le righe
# lette dal file input1.txt ma senza i numeri in mezzo a 
# ciascuna riga e senza la virgola che segue il numero.
# Infine stampo a video la somma dei numeri.
# ad esempio: gatto,52,vacca --> gatto, vacca /n 52


IFS=$',\n'
while read A B C D ; 
	do
		somma=$(( somma + $B ))
	done < input1.txt

# SOLUZIONE ERRATTA, perché non copre tutti i casi	
# sed 's/,*,/, /' input1.txt | sed 's/,..,/, /' 

# sed PER RIMUOVERE I NUMERI E LA VIRGOLA SUCCESSIVA
	sed 's/,\([0-9]\+\),/, /' input1.txt
echo $somma
