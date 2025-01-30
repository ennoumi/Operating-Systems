#! /bin/bash

# DEVO PER FORZA DICHIARARE VARIABILI GLOBALI:
# questo perché se imposto ad esempio INDICEMASSIMO nello script
# figlio, ogni volta che lo chiamo avrà lo stesso valore e quindi
# generare un errore.
# Prima di chiamare il figlio devo aumentare l'indice, perché
# altrimenti l'icnremento non viene ereditato dal figlio perché 
# il figlio viene eseguito in un nuovo processo, e quindi le modifiche
# non si propagano al figlio in esecuzione.

export INDICEATTUALE=0
export INDICEMASSIMO=10

# Lancio in esecuzione lo script figlio senza passargli argomenti a 
# a riga di comando.
./es146figlio.sh
