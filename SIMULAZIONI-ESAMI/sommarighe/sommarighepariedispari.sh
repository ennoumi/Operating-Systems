#! /bin/bash

# SBAGLIATISSIMO
# Il file da leggere lo prendo in input
#if (( $# != 1 )) ; then
#	echo "Serve un argomento"
#	exit 1
#fi

#FILE="$1"

# ERRORE GRAVISSIMO, entrambi devo impostarli a 0 per sommare corettamente i numeri nelle righe dispari
#SOMMAPARI=0
#SOMMADISPARI=1

# ALTRO ERRORE GRAVE NON SI USA {!RIGA}, BASTA ${RIGA} PER OTTENERE IL VALORE DELLA RIGA
#while read RIGA ; 
#	do
# ALTRO ERRORE, PER DETERMINARE SE L'INDICE è PARI O DISPARI DEVE ESSERE BASATO SULL'INDICE
# DELLA RIGA NON IL VALORE NELLA RIGA
#		if (( $RIGA % 2 == 0 )) ; then
#			SOMMAPARI=$SOMMAPARI+${!RIGA}
#		else
#			SOMMADISPARI=$SOMMADISPARI+${!RIGA}
#		fi
#	done < $FILE
	
	
#echo "PARI:$SOMMAPARI e DISPARI:$SOMMADISPARI"

# Il file da leggere lo prendo in input
if (( $# != 1 )) ; then
	echo "Serve un argomento"
	exit 1
fi

FILE="$1"
SOMMAPARI=0
SOMMADISPARI=0
INDICE=0

while read RIGA ; 
	do
		if (( ($INDICE + 1) % 2 == 0 )) ; then
			# sommo i numeri nelle righe di indice pari
			SOMMAPARI=$(( SOMMAPARI + RIGA ))
		else
			# sommo i numeri nelle righe di indice dispari
			SOMMADISPARI=$(( SOMMADISPARI + RIGA ))
		fi
		
		# devo ovviamente incrementare l'indice
		 (( INDICE++ ))
		# oppure
		# INDICE=$(( INDICE + 1 ))
	done < $FILE
 
echo "PARI=$SOMMAPARI e DISPARI=$SOMMADISPARI"
