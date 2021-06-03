#!/bin/bash
#
# quarto.sh Nosso Quarto programa em Shell -  condicional if then else
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
# Este programa ira capturar o valor digitado e  ira armazenar na variavel $DIGITADO e ira
# comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado
# o segredo na tela, se nao for igual, ira mostrar um erro.
# Exemplo  de executacao
#
# $ ./quarto.sh utah
# Digite o Segredo:
# utah
# Meus Prabens voce acertou o segredo. voce esta na melhor em Linux do Brasil
# $ ./quarto.sh blue
# Digite o Segredo:
# blue
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
echo "Por favor, digite o segredo:"
# read ira ler o que o usuario digitou e armazenara na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabens, voce acertou o segredo. voce esta na melhor em linux do brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo na $DIGITADO"
	echo
fi
