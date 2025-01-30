#! /bin/bash

while read RIGA ;
	do
		# RIGA="{RIGA//*/\*}"  ERRORE -> dobbiamo disabilitare l'interpretazione dei metacaratteri
		RIGA="${RIGA//\*/\\*}"
		RIGA="${RIGA//\?/\\?}"
		RIGA="${RIGA//\]/\\]}"
		RIGA="${RIGA//\[/\\[}"

		echo "$RIGA"
	done
