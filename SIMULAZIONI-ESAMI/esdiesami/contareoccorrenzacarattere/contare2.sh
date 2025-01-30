#! /bin/bash

count=0

while read -N 1 CAR ; 
	do
		if [[ "$CAR" == "c" ]] ; then
			(( count++ ))
		fi
	done<<FINE
La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
FINE

echo $count
