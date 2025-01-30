#! /bin/bash

percorsoORIGINARIO=${PATH} # salvo il PATH in percorsoORIGINARIO
echo -e "PATH=$percorsoORIGINARIO\n"

while [[ -n $percorsoORIGINARIO ]] ; 
	do
		PRIMOPERCORSO=${percorsoORIGINARIO%%:*} # estraggo la prima parte
		echo $PRIMOPERCORSO
		# break
		percorsoORA=${percorsoORIGINARIO} # memorizzo lo stato precedente del PATH
		echo -e "$percorsoORA"
		# break
		percorsoORIGINARIO=${percorsoORA#*:} # rimuovo la prima parte
		echo -e "$percorsoSENZAPRIMAPARTE"
		
		if [[ $percorsoORA == $percorsoORIGINARIO ]] ; then
			break
		fi

	done
