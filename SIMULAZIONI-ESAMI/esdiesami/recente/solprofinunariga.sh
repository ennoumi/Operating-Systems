# cercare la directory che verifica le tre seguenti proprieta':
# - sta nell'albero che parte da /usr/include/
# - contiene almeno una 'a' nel proprio nome
# - e' quella modificata piu' di recente tra tutte quelle che
#   verificano le due precedenti proprieta'.
#
# Suggerimento: per verificare se il vostro script funziona 
# creare una directory che risponda alle caratteristiche:
# essendo la directory creata piu' di recente, dovrebbe essere quella
# il risultato trovato dal vostro script.

# ls -1cdt $(find /usr/include/* -type d -name "*a*") 
# -1 = mostra un elemento per riga
# -c = ordinata per data di modifica
# -t = ordinata dal più recente al meno recente
# -d = mostra le directory trovate

# Adesso con il comando sopra ho stampato le d che soddisfano quelle caratteristiche
# Visualizzo solo la prima con head perché è quella che mi interessa.
ls -1cdt $( find /usr/include/* -type d -name "*a*" ) | head -n 1
