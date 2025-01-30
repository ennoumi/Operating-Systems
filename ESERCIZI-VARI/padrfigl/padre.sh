#! /bin/bash

# Lancio 10 processi figli in backround
for processo in {1..10} ; 
	do
		./figlio.sh &
	done
	
while (( 1 )) ; 
	do
		sleep 2 # per non sovraccaricare il carico sulla CPU
		
		# Conto i processi ancora in esecuzione
		NUMJOBS=`jobs | grep Running | wc -l`
		
		# Stampo il numero di processi ancora in esecuzione
		echo $NUMJOBS
		
		# Se invece non ci sono più processi termino
		if (( $NUMJOBS == 0 )) ; then
			exit 0
		fi
	done
