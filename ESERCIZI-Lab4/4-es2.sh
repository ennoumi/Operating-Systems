#! /bin/bash
for CERCO in {c..g} ; do
	for nome in /usr/include/?${CERCO}* ; do
		if [[ -e ${nome} && ( ${#nome} -lt 18 || ${#nome} -gt 23 ) ]] ; then 
			echo $nome
		fi
	done
done
