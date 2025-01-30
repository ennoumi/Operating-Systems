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


dCORRENTE=""
for name in $(find /usr/include/ -type d -name "*a*") ; 
	do
		if [[ $name -nt $dCORRENTE ]] ; then
			dCORRENTE=$name
		fi
		
	done

	if [[ -n $dCORRENTE ]] ; then
		echo "La directory più recente trovata è: $dCORRENTE" 
	else
		echo "Nessuna directory con queste caratteristiche è stata trovata"
	fi

