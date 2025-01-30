#! /bin/bash

echo "$$"
 
if (( $INDICEATTUALE < $INDICEMASSIMO )) ; then
	INDICEATTUALE=$(( INDICEATTUALE + 1 ))
		./es146figlio.sh
fi

