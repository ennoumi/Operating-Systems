#! /bin/bash

var1=A
var2=B

# vic: COMINCIARE DA QUI

while read p1 p2 p3 ;
	do
		if [[ "$p1" == "VISUALIZZA" ]] ; then
			if [[ "$p2" == "var1" ]] ; then
				echo ${var1}
			elif [[ "$p2" == "var2" ]] ; then
				echo $var2
			fi
		fi
		
		if [[ "$p1" == "ASSEGNA" ]] ; then
			if [[ "$p2" == "var1" ]] ; then
				var1=$p3
			elif [[ "$p2" == "var2" ]] ; then
				var2=$p3
			fi
		fi
	done 
