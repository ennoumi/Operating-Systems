#! /bin/bash

# Devo generare ad ogni invocazione a caso tra a e c

GENERAZIONE=$RANDOM

while (( 1 )) ;
	do 
		if (( GENERAZIONE % 2 )) ; then
			echo -n "a"
			break
		else
			echo -n "c"
			break
		fi
	done
