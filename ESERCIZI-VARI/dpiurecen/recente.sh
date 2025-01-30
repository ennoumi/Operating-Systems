#! /bin/bash

# Cercare la directory che verifica le tre seguenti proprietà:
# sta nell'albero che parte da /usr/include/
# contiene almeno una 'a' nel proprio nome
# è quella modificata più di recente tra tutte quelle che verificano le due precedenti proprietà

# VARIABILI PER MEMORIZZARE LA DIRECTORY CORRENTE
directory=""

for name in `find /usr/include/ -type d -name "*a*"` ; 
	do
		if [[ $name -nt $directory ]] ; then
			directory=$name
		fi
	done
	
if [[ -n $directory ]] ; then
		echo "La directory più recente è: $directory"
	else
		echo "Nessuna directory avente queste caratteristiche è stata trovata"
fi

	
