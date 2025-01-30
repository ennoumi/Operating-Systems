
# Esercizio2: e ancora un po' piu' di for per tutti
# In una propria directory, creare 10 directory avente nome
# 1.0 1.1 1.2 1.3 1.4 ...... 1.9
# Utilizzare il comando for ed il comando mv della bash, per cambiare i nomi delle
# directory rispettivamente in
# 2.9 2.8 2.7 2.6 2.5 ...... 2.0
# Notare che, ad esempio, 1.1 deve diventare 2.8 e 1.3 deve diventare 2.6
# In generale, 1.X deve diventare 2.(9-X)

#! /bin/bash

for (( i=0 ; $i < 10 ; i=$i+1 )) ; 
	do
		touch 1.${i}
	done

# SBAGLIATO
# for (( i=10 ; $i > 0 ; i=$i-1 )) ;
#	do
#		mv 1.${i} 2.${i}
#	done

 for (( i=0 ; $i < 10 ; i=$i+1 )) ; 
	do
		(( NewNum=9-$i ))
		mv 1.${i} 2.${NewNum}
	done
