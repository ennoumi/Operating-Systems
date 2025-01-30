#! /bin/bash

exec {FD}< ~/ESERCIZI/example.txt

if (( $? == 0 )) ; then 
	while read -u ${FD} uno due tre quattro ; 
		do 
			echo ${tre};
		done

	exec {FD}>&-
fi
	
