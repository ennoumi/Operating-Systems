
#!/bin/bash

# controllo se mancano degli argomenti
if (( $# == 0 )) ; then echo "manca argomento"; exit 0; fi

NOMEFILE=$1
NOMEFILECOPIA=${NOMEFILE}.copy

# se il file non esiste scrivo file non esistente
if [[ ! -e ${NOMEFILE} ]] ; then echo "file non esiste"; exit 0; fi

# per evitare conflitto se esiste già lo elimino.
if [[ -e ${NOMEFILECOPIA} ]] ; then rm ${NOMEFILECOPIA}; fi

COUNT=0


while read RIGA ; do
		# salvo il contenuto della prima riga in PRIMARIGA
        if (( $COUNT == 0 )) ; then
           PRIMARIGA="${RIGA}"
        else
			# e stampo direttamente le righe successive
           echo "${RIGA}"
		fi
		# aumento il contatore ad ogni iterazione
        (( COUNT=$COUNT+1 ))
done < ${NOMEFILE} > ${NOMEFILECOPIA}
# in questo modo ho saltato la prima riga (e memorizzata in PRIMARIGA)
# che adesso vado a stampare nell'ultima riga del file di copia



echo "${PRIMARIGA}" >> ${NOMEFILECOPIA}
