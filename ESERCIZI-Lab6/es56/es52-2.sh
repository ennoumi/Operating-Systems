#! /bin/bash

while read LINEA ; do
	echo "$LINEA" | awk '{print $1 > "errori.txt" ; print "evviva" }' 
done
