#! /bin/bash

exec {FD}< ~/ESERCIZI/miofileNoNL.txt

if (( $? == 0 )) ; then
	while read -u ${FD} RIGA ;  [[ $? == 0 || ${#RIGA} -ne 0 ]]; do
		echo $RIGA ; 
	done
			exec {FD}>&- 

fi
