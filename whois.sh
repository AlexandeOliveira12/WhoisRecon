#!/bin/bash

verde="\e[32m"
azul="\e[34m"
vermelho="\e[34m"
reset="\e[0m"

if [ -z "$1" ]; 
then
    echo
    echo -e "$azul Uso: ./whois.sh $reset $vermelho <dominio> $reset"
    exit 1
fi

echo
echo '
	 __      __.__           .___
	/  \    /  \  |__   ____ |   | ______
	\   \/\/   /  |  \ /  _ \|   |/  ___/
	 \        /|   Y  (  <_> )   |\___ \
	  \__/\  / |___|  /\____/|___/____  >
	       \/       \/                \/
'
echo
echo -e "[$azul...$reset] Checking Subdomains"
echo
whois "$1" > result.txt
cat result.txt | grep -Ev "%|#|owner-c" | egrep "inetnum|source|route|domain|owner|ownerid|responsible|nserver|person|e-mail"
rm -rf result.txt
