#! /bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 rihe
# non si possono usare file esterni.


COUNT=0
while read -N 1 CAR ; 
	do
		if [[ -n "$CAR$" && "$CAR" == "c" ]] ; then
			COUNT=$(( COUNT+1 ))
		fi
	done <<FINE
La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
FINE

echo "Trovati $COUNT caratteri c"
 
 
 
