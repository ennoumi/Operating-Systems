#! /bin/bash


NUMFIGLI=3
# elimino gli eventuali file presenti 
for (( i=0; $i<${NUMFIGLI}; i=$i+1 )) ; do 
 if [[ -e ${i} ]] ; then rm -f ${i} ; fi
done

# INIZIA DA QUI 

touch "0"

for (( i=0 ; $i < 3 ; i=$i+1 )) ;
	do
		./figlio1.sh $i &
	done

wait
