#! /bin/bash


# VERSIONE SBAGLIATA
#		for (( counter=0  ; $counter < 3 ; counter=$counter+1 )) ;
#			do
#				rm $indice
#		
#				touch $(( (${indice}+1)%3 ))
#				echo $indice
				
#			done
#	else
		# ERRORE sleep andrebbe DOPO L'OPERAZIONE DI CONTROLLO DEL FILE e DOVREBBE ESEGUIRE UN CICLO CONTINUO
		# FINCHE NON TROVA IL FILE
#		sleep 1
#	fi


MAXNUMSTAMPE=3
counter=0

while (( 1 )) ;
	do
		sleep 1s
		
		if [[ -e ${indice} ]] ; then
			(( counter++ ))
			rm ${indice}
			
			touch $(( (${indice}+1)%3 ))
			
			echo $indice
			if [[ $counter == $MAXNUMSTAMPE ]] ; then
				break
			fi
		fi
	done
	
echo figlio indice ${indice} finisce
