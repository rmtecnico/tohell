#!/bin/bash
#
# quinto.sh Nosso Quinto programa em Shell -  condicional case
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
# Este programa ira capturar o primeiro parametro passado depois do programa e ira armazenar na variavel $1, caso o valor
# seja start, executara o trecho de comandos do start, caso seja stop executara o trecho stop,
# caso seja status executar o trecho status e caso nao seja nenhum dos valores acima ira mostra a mensagem para usar os valor
# start, stop 
#
# $ ./quinto.sh start
# Bem vindo ao Programa Stronger.
# Iniciando o programa.
# ...
# ......
# ............
# .................
# .........................
#
# Historico de Versoes
#
# Versao: 1.0
#
# COPYRIGHT: Este programa e GPL 

PID="/tmp/stronger.pid"
echo
echo "Bem vindo ao Stronger!"
echo
case $1 in
	start)
	echo
	echo "Iniciando o programa Stronger"
	echo "......."
	sleep 2s
	echo "............."
	sleep 2s
	echo ".................."
	sleep 2s
	echo "...................."
	touch $PID
	echo "Programa Stronger Iniciando com sucesso"
	;;
stop)
	echo
	echo "Parando o programa Stronger"
	echo "......."
	sleep 2s
	echo "............."
	sleep 2s
	echo ".................."
	sleep 2s
	echo "...................."
	rm $PID
	echo "Programa Stronger parado com sucesso"
	;;
status)
	echo
	echo "Verificando o status do programa Stronger"
	echo
	if [ -f $PID ]; then
		echo "o programa stronger esta em execucao"
	else
		echo "o programa stronger esta parado"
	fi
	;;
*)
	echo "Por favor Digitar ./quinto start | stop | status"
	;;
esac

exit 0
