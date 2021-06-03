#!/bin/bash
#
# mr.robot.sh Nosso Decimo programa em Shell -  Mr. Robot
#
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
#
# $ ./mr.robot.sh
# O valor /etc/xyz.conf foi encontrado no diretorio /etc
#
#

source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOla eu sou o Mr. Robot. Fui criado para atacar. Nao sou seu amigo. mas diga:\nO que voce quer que eu fa√a?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga Agora!" ACTION
	echo -e "\n"

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADOS]}"
		;;
		*"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADOS]}"
		;;
		*"conecte"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 4 ))"
			ssh -l root "${openssh[$DADO]}"
		;;

	esac
done
