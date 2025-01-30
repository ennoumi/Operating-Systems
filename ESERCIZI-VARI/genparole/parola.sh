#! /bin/bash

for (( i=1 ; $i <= 4 ; i=$i+1 ))
	do
		SCRIPT=`./lettera.sh`
		echo -n "$SCRIPT"
	done
