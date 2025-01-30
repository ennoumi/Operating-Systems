#! /bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

count=0
while read  p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 ; 
	do
		for word in "$p1" "$p2" "$p3" "$p4" "$p5" "$p6" "$p7" "$p8" "$p9" "$p10" ; 
			do
				if [[ "$word" == "int" ]] ; then
					count=$(( count + 1 ))
				fi
			done
	done < prova.txt 
	
echo "Numero di parole contenenti 'int' è ${count}"
