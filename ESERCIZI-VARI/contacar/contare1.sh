#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle prime 4 directory di /usr/include.
# non si possono usare file esterni.

ls -1ctd $(find /usr/include/ -type d -name "*a*") | head -n 1 | grep -o "c" | wc -l

# -1: Mostra un elemento per riga.
# -c: Ordina per data di modifica.
# -t: Ordina dal più recente al meno recente.
# -d: Mostra solo le directory trovate, senza il contenuto
