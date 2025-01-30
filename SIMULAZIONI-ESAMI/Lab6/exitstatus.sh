#! /bin/bash

( sleep 2; ls -d /usr/include/ ) && 
	{ [[ (! ( "false" > "true" )) || ( 3 -le 5 ) ]] ; } 
	&& if [[ $? < "01" ]] ; then 
			exit 0; 
		else 
			exit 1 ; 
		fi ;
exit $

# ( sleep 2; ls -d /usr/include/ ) blocco di comandi eseguito in una subshell
# prima dorme due sec, poi lista la directory /usr/include se esiste la directory
# restituisce exit status 0

# && ---> se il comando precedente ha avuto successo (exit status 0) 

# ( "false" > "true" ) è un confronto lessicografico. È vero poiché f viene prima
# di t nell'alfabeto
# !( ( "false" < "true" ) ) quindi ora è falsa

# || OR --> () || () diventa vera se è una delle condizioni è vera

# ( 3 -le 5 ) è un'operazione matematica. Quindi è vera

# abbiamo quindi --> vero && ( falso || vero ) ---> vero && vero

# if [[ l'exit status che è vero < "01" ]] allora exit 0 altrimenti 1

# abbiamo 0 < 01, 0 è minore lessicograficamente di 01 quindi restituisce 0.
