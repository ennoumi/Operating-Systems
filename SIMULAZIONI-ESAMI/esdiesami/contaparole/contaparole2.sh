#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

counter=0
# Leggo dal file una riga alla volta
while read RIGA; do
		# imposto una variabile che tiene conto del numero di parole analizzate
		# in una riga
        CONTA=0
        # Divido il contenuto della riga in parole
        for parola in ${RIGA}; do
				# e per ogni parola della riga
                if (( $CONTA < 10 )); then
						# confronto se essa è uguale a "int". In caso lo sia
                        if [[ "$parola" = "int" ]]; then
								# aumento il contatore
                                ((counter=${counter}+1))
                        fi
                fi
                # incremento il contatore locale, per passare alla parola successiva
                ((CONTA=${CONTA}+1))
        done
done < "./prova.txt"

echo contate $counter parole \"int\"
 
