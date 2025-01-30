#! /bin/bash

# PER ESCLUDERE SIA `.` , `..` e `i file nascosti` si può usare semplicemente `*`

LungNomiDirectory=0
LungNomiNonDirectory=0

for LISTING in `ls *` ; do
	if [[ -d  ${LISTING} ]] ; then
		(( LungNomiDirectory="${LungNomiDirectory}+${#LISTING}" ))
	else
		(( LungNomiNonDirectory="${LungNomiNonDirectory}+1" ))
	fi
done

echo "LungNomiDirectory=${LungNomiDirectory}"
echo "LungNomiNonDirectory=${LungNomiNonDirectory}"
	
