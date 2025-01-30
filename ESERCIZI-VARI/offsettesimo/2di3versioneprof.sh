#! /bin/bash

while read uno due tre quattro ; 
	do
		if [[ -n "$tre" ]]; then
			car=${tre:1:1}
			if [[ -n "$car" ]]; then 
				echo $car
			fi
		fi
	done < esempio.txt
