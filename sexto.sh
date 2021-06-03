#!/bin/bash
#
# setimo.sh Nosso Setimo programa em Shell -  condicional case
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel nao forca
# seja start, executara o trecho de comandos do start, caso seja stop executara o trecho stop,
# caso seja status executar o trecho status e caso nao seja nenhum dos valores acima ira mostra a mensagem para usar os valor
# 
#
# $ ./setimo.sh start
# O valor da Variavel é0, que émenor que 10
# O valor da Variavel é1, que émenor que 10
#
#

NUMRO="10"

echo
echo "Bem Vindo ao Programa de numeros"
echo

until [ $NUMERO -eq "10" ]; do
	echo "O valor da variavel �: $NUMERO"
	echo "O $NUMERO e menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0
