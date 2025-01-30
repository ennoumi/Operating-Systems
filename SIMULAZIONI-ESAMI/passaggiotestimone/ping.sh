# ESERCIZIO A – passaggio di testimone mediante file:
# Scrivere due script ping.sh e pong .sh in cui il processo 
# ping imposta il necessario, poi lancia in
# background il processo pong e infine inizia a ciclare     
# per passarsi ripetutamente il testimone con il
# processo pong.sh.
# I due processi devono fare il necessario per stampare 
# a video, alternandosi, il proprio nome.
# Ogni processo informa l’altro processo che è il turno   
# dell’altro, creando un file che si chiama come
#  l’altro processo ma con estensione .txt invece che .sh
# Prima di passare il controllo all’altro processo, ogni      
# processo elimina il file che ha il proprio nome ma
# con estensione .txt invece che .sh
#  Per non usare troppa CPU, ogni processo verifica        
# l’esistenza del file, avente il proprio nome ma
# estensione diversa, solo una volta ogni 2 secondi.



#! /bin/bash

# IMPOSTO IL NECESSARIO
# quindi creo i testimoni da passare ai file
export TESTIMONE_PING="ping.txt"
export TESTIMONE_PONG="pong.txt"

# creo il file che indica che è il turno dell'altro
touch "$TESTIMONE_PONG"

# ESEGUO IN bg L'ALTRO PROCESSO
./pong.sh &

# CICLO PER PASSARE RIPETUTAMENTE IL TESTIMONE CON IL PROCESSO pong.sh
counter=1
while (( counter < 100 )) ; 
	do
	
	if [[ -f "$TESTIMONE_PING" ]] ; then
		echo "Ping"
		rm -f "$TESTIMONE_PING"
		touch "$TESTIMONE_PONG" 
	fi
	
	(( counter++ ))
	sleep 2
	
	done

# I due processi devono stampare alternandosi, il proprio nome.
# Ogni processo informa l'altro processo che è il turno dell'altro. Creando un
# file che si chiama come l'altro processo ma con estensione .txt

# prima di passare il controllo ogni processo elimina il file .txt con il proprio nome

# Devo verificare l'esistenza del file, avente il proprio nome ma con estesine diversa, ogni 2 secondi


