#! /bin/bash

while read NOME C0GNOME MATRICOLA VOTO ALTRO; 
	do
		if (( "$VOTO" < "18" )) ; then
		
			# grep -q non produce output
			if ! grep -q "$MATRICOLA" RisultatiProvaPratica1.txt ; then
				echo "$MATRICOLA $NOME $COGNOME $VOTO"
			fi
		fi
			
	# sort -k 3 ordina in base al terzo campo, in questo caso il cognome
	done < RisultatiProvaPratica2.txt | sort -k 3

# Si poteva fare anche in un altro modo più "lungo" e quindi meno bello da vedere:
# ovvero impostare una variabile LINEE, con il numero di linee in cui la matricola appare
# nel primo file. Poi controllare se LINEE è zero, in caso lo sia, allora lo studente non è
# stato trovato nel file RisultatiProvaPratica1.txt e quindi non ha sostenuto la 
# prima prova pratica.
