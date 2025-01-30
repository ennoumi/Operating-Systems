#!/bin/bash

# Scrivere uno script lettera.sh che genera ad ogni invocazione
# una lettera a caso tra queste due a c
# e la stampa in output SENZA ANDARE A CAPO.
# Suggerimento: usare variabile RANDOM.

# Scrivere poi uno script parola.sh che usa piu' volte
# il precedente script lettera.sh
# per generare parole formate da quattro caratteri
# e visualizzarle sul proprio stdout.

# Infine, scrivere uno script tenta.sh che
# invoca piu 'volte lo script parola.sh
# fino a che riesce a generare casualmente la
# parola "cacc".
# Se genera una parola diversa allora lo script
# riprova a generare ancora una nuova parola
# e cosi' via.
# Quando lo script riesce a generare la parola cacc
# allora lo script stampa a video
# la parola "cacc" ed il numero di volte che ho
# dovuto generare parole fino a trovare 
# quella giusta, poi termina. 


# #! /bin/bash

# CONT=0
#
# while (( 1 ))
#	do
#		INVOCO=`./parola.sh`
#		
#		if [[ "$INVOCO" != "cacc" ]] ; then
#			CONT=$(( CONT+1 ))
#		else 
#			echo "$INVOCO $CONT"
#			break
#		fi
#	done


# meglio questa:

for (( CONT=1 ; CONT++ )) ; 
	do
		PAROLA=`./parola.sh`
			
		if [[ "$PAROLA" == "cacc" ]] ; then
			echo "$PAROLA $CONT"
			break
		fi
		
	done


