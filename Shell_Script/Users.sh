#!/bin/bash
# Entregable 4. User.sh
# Autor: Rocío Alzas Conde.
# Fecha: 02/02/2024.

if [ $# -ne 1 ]; then
	echo "No has entrado la referencia correcta, pon solo una."
	exit 0
fi

fecha=$(date +"%d-%m-%Y")
hora=$(date +"%H:%M")
echo "==================================================="
echo "Informe de usuarios el dia $fecha a las $hora."
echo ""

IFS=":"
while read user x uid gid g home shell ; do
	if [ $uid -ge $1 ]; then
		echo "$user - $uid"
		 ((con_user++))		
	fi
done < /etc/passwd

echo ""
echo "Total: $con_user usuarios."
echo "==================================================="

usr=$(whoami)
echo "$fecha - $hora - El usuario $usr ha solicitado un informa de usuarios." >> /tmp/logeventos
