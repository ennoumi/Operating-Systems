#! /bin/bash

numero_c_riga_corrente=0
c_in_tutte_le_righe=0

while read -r RIGA ;
	do
	numero_c_riga_corrente=$( echo "$RIGA" | grep -o "c" | wc -l )
	 # echo $numero_c_riga_corrente
	(( c_in_tutte_le_righe=c_in_tutte_le_righe+numero_c_riga_corrente ))
	done <<FINE
La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
FINE

echo $c_in_tutte_le_righe

# IMPORTANTISSIMO METTERE L'OPZIONE -o SU GREP
# grep -o "c" CERCA IL PATTERN c E STAMPA LE RIGHE CHE LO CONTENGONO
# quindi dopo con wc -l conto le righe, e so quante volte è apparso c
