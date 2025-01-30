#! /bin/bash

echo "PATH:$PATH"
echo "$PATH" | awk -F: '{ for( i=1 ; i<= NF ; i++) { print $i ; print length($i) } }'
