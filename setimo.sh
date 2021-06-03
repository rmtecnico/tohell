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
echo
echo "Bem Vindo ao Programa de numeros"
echo

while [ $NUMERO -lt "10" ]; do
	echo "O valor da variavel Ã: $NUMERO"
	echo "O $NUMERO e menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0
