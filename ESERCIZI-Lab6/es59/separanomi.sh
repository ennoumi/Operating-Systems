#! /bin/bash

echo "$PATH" | awk -F: '{ for( i = 1 ; i <= NF ; i++) { print $i } }' | cut -b 2- | sed 's/\// /g'
