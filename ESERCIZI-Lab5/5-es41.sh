#! /bin/bash

echo $1 | while (( 1 )) ; do
	read -n 1 CAR ; 
		if (( $? == 0 )) ; then
		# IL CARATTERE APPENA LETTO VIENE AGGIUNTO ALL'INIZIO DI UNA VARIABILE REVERSE
		# ogni nuovo carattere CAR viene concatenato prima del contenuto esistente di REVERSE, invertendo così l'ordine
			REVERSE=${CAR}${REVERSE}
		else
			echo stringa rovesciata ${REVERSE}
			break
		fi
done
 
echo NON STAMPA IL CONTENUTO DI STA STRINGA: $REVERSE

