#!/bin/bash

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

# Variabile per fare i controlli
primo="true"
# Variabile che memorizza la directory modificata più recente
found=""


for name in $(find /usr/include/ -type d -iname "*a*") ; do
 if [[ ${primo} == "true" ]] ; then 
	# Assegno la prima directory trovata a found
	found="${name}"
	# Imposto primo a false per indicare che ho gestito il controllo
	primo="false"

	# Controllo se è stata modificata la directory corrente più recentemente rispetto alla prima
elif [[ ${name} -nt ${found} ]] ; then
	# Se la corrente è più recente, imposto found alla directory corrente
	found="${name}"
 fi
done
echo trovato ${found}
