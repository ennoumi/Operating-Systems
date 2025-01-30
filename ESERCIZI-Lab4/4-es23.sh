#! /bin/bash

exec {FD}< ~/ESERCIZI/example.txt
NUM=0;

if (( $? == 0 )) ; then 
	while read -u ${FD} -N 1 -r CARATTERI; 
		do
			((NUM=$NUM + 1 ))
		done
fi
	exec {FD}>&-
	echo ${NUM}
