#! /bin/bash

# No metacaratteri o stringhe che causano espansioni.
# Usare un approccio ricorsivo.

if read LINEA ; then
	./inverti2.sh
	echo $LINEA
fi

# ESEMPIO PRATICO
# Legge la prima riga "Alfa beta gamma" e fa una chiamata ricorsiva per leggere la prossima riga
# Legge "Gatto cane serpente maiale" e fa una chiamata ricorsiva per leggere la prossima riga
# Legge "Asdrubale teofilo" e fa una chiamata ricorsiva per leggere la prossima riga
# ma non ci sono righe. Quindi non ci saranno chiamate ricorsive.

# Poiché non ci sono altre righe, le chiamate ricorsive iniziano a ritornare indietro.
# Quando la ricorsione ritorna, la riga "Asdrubale teofilo" viene stampata per prima.

La ricorsione in questo caso funziona come un meccanismo di “ritorno” delle chiamate, 
cioè prima che una riga venga stampata, bisogna attraversare tutte le righe successive, 
facendo sì che le righe vengano stampate nell’ordine inverso. 
La chiave è che ogni chiamata ricorsiva eseguita dal comando ./inverti2.sh 
legge una riga, ma solo quando tutte le chiamate ricorsive sono terminate si 
comincia a stampare le righe. Questo produce l’effetto di un ordinamento inverso
delle righe.
