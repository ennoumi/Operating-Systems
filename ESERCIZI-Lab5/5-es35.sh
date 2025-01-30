#! /bin/bash

SALTA=SI

while read -r RIGA ; do
	if [[ $SALTA == "SI" ]] ; then
		echo $RIGA # STAMPO LA RIGA
		SALTA=NO   # SALTO LA RIGA
	else
		# DOPO AVER SALTATO, SALTA DEVE ESSERE MESSO A "SI"
		SALTA=SI
	fi
done
