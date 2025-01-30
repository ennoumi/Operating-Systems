#! /bin/bash

# Devo realizzare uno script che accetta un argomento intero (ad es. 5)
# 1) Lancia se stesso ricorsivamente in bg, passando un argomento che diminuisce di volta in volta
# 2) Ogni volta che uno script figlio viene lanciato devo stamparne il PID
# 3) Dopo aver lanciato il figlio, il padre deve aspettare che il figlio termini l'esecuzione (usando il comando wait)
# 4) Ogni figlio, dovrà creare un altro figlio e cosi via

Inizialmente verifico con `if (( $1 > 0 ))` che il numero di processi discendenti sia maggiore di zero
Successivamente lancio una nuova istanza di me stesso, passando come argomento il valore decresciuto di 1, in background

if (( $1 > 0 )) ; then
	./lanciaricorsivo.sh $(( $1 - 1 )) $ 
	echo $!
	wait $! 
fi
