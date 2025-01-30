# Devo leggere il file preso in input e copiarlo in un file che termina con
# copy.
# Successivamente devo rimuovere la prima riga dal file di copia.
# Poi la nuova prima riga (che ora è la seconda) la agiungo alla fine del file.


#! /bin/bash
NOMEFILE=$1
FILECOPIA=$NOMEFILE.copy

if [[ ! -e $NOMEFILE ]] ; then
	echo "Argomento mancante. "$0" "inserire file" "
	exit 1
fi


while read RIGA 
	do
		echo "$RIGA"
	done < $NOMEFILE > $FILECOPIA

 # aggiungo la prima riga alla fine del file di copia
 head -n 1 $FILECOPIA >> $FILECOPIA
 # rimuovo la prima riga dal file di copia  e sovrascrivo il file $FILECOPIA con il contenuto di tmp
 tail -n +2 $FILECOPIA > tmp.txt && mv tmp.txt $FILECOPIA
  
# PRIMA AVEVO FATTO COSI   
# head -n 1 $FILECOPIA > tmp.txt
# cat tmp.txt >> $FILECOPIA
# rm tmp.txt
# tail -n +2 $FILECOPIA > tmp.txt # leggi dalla seconda riga (quindi salta la prima)
# cat tmp.txt > $FILECOPIA
 
