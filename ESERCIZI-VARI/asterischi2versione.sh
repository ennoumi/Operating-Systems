#! /bin/bash

for name in `find /usr/include/ -type f -name "*.h"` ;
	do
		grep -H '*' ${name} | wc -l 	1>&2
	done
