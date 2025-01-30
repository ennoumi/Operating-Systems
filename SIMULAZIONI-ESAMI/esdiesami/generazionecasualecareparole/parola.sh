#! /bin/bash

for (( i=0 ; $i < 4 ; i=$i+1 )) ;
	do
		parola=$(./lettera.sh)
		echo -n $parola
	done

# oppure
# PAROLA=""
# for (( i=0 ; $i < 4 ; i=$i+1 )) ; do
#	PAROLA=${PAROLA}$(./lettera.sh)
# done
# echo $PAROLA
