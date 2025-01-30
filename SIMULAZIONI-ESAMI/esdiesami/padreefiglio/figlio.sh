# Dobbiamo gestire la creazione di processi figli dallo script "padre".
# Monitorare i processi figli in esecuzione e terminare lo script padre
# quando tutti i processi figli sono completati.

# Il processo figlio genera un numero casuale di secondi (tra 1 e 5).
# Dorme per il numero di secondi generato.
# Termina restituendo come codice il numero di secondi trascorsi.

# Lo script padre lancia 10 processi figli in parallelo
# e li monitora fino a quando sono terminati. Quindi conta il numero dei
# processi ancora attivi e ne stampa l'ID.

# jobs : elenca i processi in background associati alla sessione dello script
# grep Running filtra i processi che sono ancora in esecuzione.
# wc -l : conta il numero di processi ancora attivi, perché ogni riga rappresenta un processo attivo

#! /bin/bash

GENERAZIONE=$(( RANDOM%5 + 1 ))
echo "NUMERO SECONDI: $GENERAZIONE $$"
sleep ${GENERAZIONE}
echo "NUMERO SECONDI: $GENERAZIONE $$"
exit ${GENERAZIONE}
