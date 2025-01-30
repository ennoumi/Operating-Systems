#! /bin/bash

RIGA="La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
"

echo -ne "$RIGA" | sed -r 's/[^c]//g' | wc -m

# [^c] significa QUALSIASI CARATTERE TRANNE c
