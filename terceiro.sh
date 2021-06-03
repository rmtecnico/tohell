#!/bin/bash
#
# terceiro.sh Nosso Terceiro programa em Shell -  condicional if then else
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variavel $1 e ira
# comprar com o valor da variavel Segredo. Se os valores forem iguais ira mostrar que foi revelado
# o segredo na tela, se nao for igual, ira mostrar um erro.
# Exemplo  de executacao
#
# $ ./terceiro.sh utah
# Meus Prabens voce acertou o segredo. voce esta na melhor em Linux do Brasil
# $ ./tercceiro.sh blue 
# Errou. Esta perdendo tempo na blue
#
# Historico de Versoes
#
# Versao: 1.0
#
# COPYRIGHT: Este programa e GPL 

SEGREDO="utah"

echo
echo "Bem vindo as detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabens, voce acertou o segredo. voce esta na melhor em linux do brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo"
	echo
fi
