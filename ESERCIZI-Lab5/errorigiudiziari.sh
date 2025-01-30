

#!/bin/bash

# il primo ciclo estrae da verdetti.txt il IDPROCESSO e DESCRIZIONEVERDETTO
# e cerca 
while read IDPROCESSO DESCRIZIONEVERDETTO ; do
# il secondo ciclo cerca una corrispondenza tra l'IDPROCESSO (di verdetti.txt) e il idprocesso (di processi.txt), se la trova passa al terzo ciclo
 while read IDDENUNCIA idprocesso ; do
  if [[ ${IDPROCESSO} == ${idprocesso} ]] ; then
  # cerca una corrispondenza tra l'IDDENUNCIA (di processi.txt) e il iddenuncia (di denunce.txt)
   while read NOME COGNOME iddenuncia DESCRIZIONEREATO ; do
    if [[ ${IDDENUNCIA} == ${iddenuncia} ]] ; then
    # Se la trova stampa:
     echo ${NOME} ${COGNOME} ${DESCRIZIONEREATO} ${DESCRIZIONEVERDETTO}
     break
    fi
   done < denunce.txt
   break
  fi
  done < processi.txt
done < verdetti.txt
