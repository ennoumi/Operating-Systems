#! /bin/bash


while read A B C D ;
	do
		echo ${C:1:1}
	done < esempio.txt

