#! /bin/bash

echo "$PATH" | awk -F/ '{ for( i = 2 ; i <= NF ; i++) { print $i } }' | sed 's/\// /g' | sed 's/://g' 
