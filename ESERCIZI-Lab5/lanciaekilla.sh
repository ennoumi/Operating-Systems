#! /bin/bash

PIDS=`./lanciaeprendipid.sh`
echo $PIDS # stampo tutti i PID ottenuti

for PID in $PIDS ; do
	kill -9 $PID
done


