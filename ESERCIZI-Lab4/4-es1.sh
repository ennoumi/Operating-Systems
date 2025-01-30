#! /bin/bash
for nome in /usr/include/* ; do
	if [[ -d $nome && -r $nome && $nome -nt /usr/include/stdio.h ]] ; then
		echo $nome
	fi
done
