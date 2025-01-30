#! /bin/bash

#dir=""
# GRAVE ERRORE FARE -d in un ciclo for, in quanto si usa solo nei if
# /* SI LIMITA A CERCARE FILE CON ESTENSIONE .h NELLA DIRECTORY /usr/include SENZA
# ESPLORARE LE SOTTODIRECTORY

#for name in `/usr/include/*.h -d`; 
#	do 
# SBAGLIATO PERCHÉ dir È VUOTO, NON CONTENE IL NOME DI UN FILE PER FARE IL CONFRONTO
#		if [[ $name -nt $dir ]] ; then
			dir=$name
			# SBAGLIATO PERCHÉ STAMPA dir SUBITO DOPO AVERLO AGGIONRATO, INVECE
			# ANDREBBE FATTO SOLO ALLA FINE QUANDO HAI TROVATO TUTTI I FILE
			echo $dir
#		fi
#	done


FILES=`find /usr/include/ -mindepth 2 -name "*.h"`
# -mindepth 2 esclude i file direttamente nella directory /usr/include/
# (perché -mindepth 2 inizia a cercare solo a partire dal secondo lvl di
# profondità, cioè nelle sottodirectory)

# Dopo aver trovato tutti i file, lo script deve confrontare le date di modifica
# per determinare il file più recente. 
# Prima inizializzo una variabile RECENTE con il primo file trovato
# Poi confronto ogni file con RECENTE usando -ot, ovvero verifica se un
# file è più VECCHIO di un altro. Se un file è più recente, aggiorno RECENTE

if [[ -z $FILES ]] ; then
	echo "Nessun file trovato"
else
	# assegno a recente il primo nome di file trovato
	for RECENTE in ${FILES}
		do
			break
		done
	
	# confronto la data di modifica di ogni file con RECENTE
	for NAME in ${FILES} ;
		do 
			if [[ ${RECENTE} -ot ${NAME} ]] ; then
				RECENTE=${NAME}
			fi
		done

	echo "Il file più recente è: $RECENTE"
fi
