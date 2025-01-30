#! /bin/bash	

if (( $# == 0 )) ; then
	echo "Argomento mancante"
	exit 1
fi

STRINGA="$1"
LUNGHEZZASTRINGA="${#STRINGA}"

# Devo stampare Carattere NumeroVolteCheQuelCarattereCompare

# for (( i=0 ; $i < $LUNGHEZZASTRINGA ; i=$i+1 )) ;
#	do
#		echo "${STRINGA:$i:1}"
#	done | sort | uniq -c > tmp.txt 
	
#	while read OCCORRENZA CARATTERE ; 
#		do
#			echo "$CARATTERE $OCCORRENZA"
#		done < tmp.txt
		
#	rm tmp.txt

# oppure

STRINGA="$1"
LUNGHEZZASTRINGA="${#STRINGA}"

# Devo stampare Carattere NumeroVolteCheQuelCarattereCompare

for (( i=0 ; $i < $LUNGHEZZASTRINGA ; i=$i+1 )) ;
	do
		echo "${STRINGA:$i:1}"
	done | sort | uniq -c | while read NUM CAR ; do echo "$CAR $NUM" ; done
