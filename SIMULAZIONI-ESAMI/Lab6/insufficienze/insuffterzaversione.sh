#! /bin/bash

# anzichè usare -d '' -f2- 
# ordino in base al cognome aggiungendo echo $cognome all'inizio


while read NOME COGNOME MATRICOLA VOTO ALTRO ; 
	do

		OccorrenzeMatricola=`grep ${MATRICOLA} RisultatiProvaPratica1.txt | wc -l`
		
		if (( $VOTO < "18" )) ; then
			# Adesso verifico che lo studente non sia presente nel primo file
			if (( "$OccorrenzeMatricola" == "0" )) ; then
				echo "$COGNOME $MATRICOLA $NOME $COGNOME $VOTO" 
			fi
		fi
	done < RisultatiProvaPratica2.txt | sort > tmp.txt

	while read ELIMINARE MATRICOLA NOME COGNOME VOTO ;
		do
			echo "$MATRICOLA $NOME $COGNOME $VOTO" 
		done < tmp.txt
		
	rm tmp.txt
