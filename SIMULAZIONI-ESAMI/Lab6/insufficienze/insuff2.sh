#! /bin/bash

# Script che metta in output l'elenco dei soli studenti che:
# - hanno sostenuto la seconda prova pratica, ottenendo un voto insufficiente
# - non hanno sostenuto la prima prova pratica


while read NOME COGNOME MATRICOLA VOTO ALTRO ; 
	do
		# echo "$MATRICOLA $NOME $COGNOME $VOTO"
		
		# ERRATTO LetturaMatricolaPrimoFile=`cat RisultatiProvaPratica1.txt | grep ${MATRICOLA} | wc -l`
		
		# ERRATTO PERCHÉ CONFRONTEREI UNA MATRICOLA CON IL NUMERO DI RIGHE TROVATO: if [[ $VOTO -lt 18 && $LetturaMatricolaPrimoFile != $MATRICOLA ]] ; then
		# 	echo "$MATRICOLA $COGNOME $VOTO"
		# fi
		
		OccorrenzeMatricola=`grep ${MATRICOLA} RisultatiProvaPratica1.txt | wc -l`
		
		if (( $VOTO < "18" )) ; then
			# Adesso verifico che lo studente non sia presente nel primo file
			if (( "$OccorrenzeMatricola" == "0" )) ; then
				echo "$MATRICOLA $NOME $COGNOME $VOTO" 
			fi
		fi
	done < RisultatiProvaPratica2.txt | sort -k 3
	
