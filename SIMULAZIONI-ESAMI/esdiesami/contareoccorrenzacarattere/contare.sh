# contare quante volte il carattere c e' contenuto nelle prime 4 directory di /usr/include.
# non si possono usare file esterni.

#! /bin/bash

ls -1ctd $( find /usr/include/ -type d -name "*a*" ) | grep "c" | wc -l
