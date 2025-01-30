# cercare la directory che verifica le tre seguenti proprieta':
# - sta nell'albero che parte da /usr/include/
# - contiene almeno una 'a' nel proprio nome
# - e' quella modificata piu' di recente tra tutte quelle che
#   verificano le due precedenti proprieta'.
#
# Suggerimento: per verificare se il vostro script funziona 
# creare una directory che risponda alle caratteristiche:
# essendo la directory creata piu' di recente, dovrebbe essere quella
# il risultato trovato dal vostro script.


#! /bin/bash

# 
primo="true"

# VARIABILE CHE MEMORIZZA LA DIRECTORY MODIFICATA PIÙ RECENTEMENTE
found=""

for name in $( find /usr/include/ -type d -name "*a*" ) ; 
	do
		if [[ "$primo" == "true" ]] ; then
			# Assegno la prima directory trovata a found
			found=${name}
			# Imposto primo a false per indicare che ho gestito il controllo
			primo="false"
		elif [[ ${name} -nt ${found} ]] ; then
			# Se la directory corrente è più recente, found diventa la nuova
			# directory più recente
			found=${name}
		fi
	done
	
	echo $found
