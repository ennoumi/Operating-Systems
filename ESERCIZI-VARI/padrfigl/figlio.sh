
#! /bin/bash

# genera tra zero e 4
GENERAZIONE=$(( RANDOM % 5 )) 
# Aggiungendo +1 genero tra 1 e 5
NumeroSecondi=$(( 1 + GENERAZIONE )) 

sleep $NumeroSecondi

# Stampo il numero generato e l'ID del processo
echo "Numero generato: $NumeroSecondi\nID del processo:$$"

exit ${NumeroSecondi}
