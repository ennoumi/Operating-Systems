#! /bin/bash

 
# Scrivere uno script che:
# 1) itera tutti li elementi contenuti nelle directory /usr/include e /etc/ 
#    solo gli elementi immediatamente presenti non ricorsivamente 
# 2) filtro gli elementi considerando solo i file regolari e leggibili
# 3) stampo il numero totale di righe contenute nei file regolari e leggibili

for name in /usr/include/*	/etc/*;
	do
		if [[ -f "$name" && -r "$name" ]] ; then
			cat $name 
		fi
	done | wc -l

# ERRATTO fare: for name in '/usr/include/* && /etc/*' perché i percorsi NON sono comandi
# e non producono un risultato vero

# Non usare echo ma usare cat, perché chiede di stampare il numero totale di 
# righe contenute nel file.

