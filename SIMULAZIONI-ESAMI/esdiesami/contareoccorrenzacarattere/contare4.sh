#! /bin/bash

RIGA="La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
"

echo -n -e $RIGA | sed 's/[^c]//g' | wc -m

