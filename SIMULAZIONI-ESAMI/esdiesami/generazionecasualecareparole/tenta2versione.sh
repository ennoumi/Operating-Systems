#! /bin/bash

for (( counter=1 ;  ; counter++ )) ;
	do
		PAROLA=$(./parola.sh)
		
		if [[ "$PAROLA" == "cacc" ]] ; then
			echo "$PAROLA $counter"
			break
		fi
	done
