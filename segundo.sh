#!/bin/bash
#
# segundo.sh Nosso segundo programa em Shell -  Variaveis de Controle Internas do Shell
# Homepage> http://www.utah.com.br
# Autor: Ricardo Moreira
# Mantenedor: Grupo Utah <rm.tecnico@gmail.com>
#
# -------------------------------------------------------
#
# Este programa ira mostrtar as principais variaveis de controle internas do shell, que poder√o ser
# usadas por outro programas a fim de obtermos alguma informacao
#
# Exemplo  de executacao
#
# $ ./segundo.sh Linux
# O Valor da variavel $1 e linux
# $ ./segundo.sh linux windows 
# o valor da variavel $1 e linux
# o valor da variavel $2 e windows
#
# Historico de Versoes
#
# Versao: 1.0
#
# COPYRIGHT: Este programa e GPL 

echo "Bem vindo as variaveis de controle interna do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depois do script que foi: $1"
echo
echo "A variavel \$2 armazena o segundo parametro passado depois do script que foi: $2"
echo
echo "A variavel \$3 armazena o terceiro parametro passado depois do script que foi: $3"
echo
echo "A variavel \$0 armazena o comando que foi executado | nome do programa, que foi: $0"
echo
echo "A variavel \$# armazena o numero de parametro que foram passado, que foi: $#"
echo
echo "A variavel \$\$ ou \$@  armazena o numero PID do processo gerado na execucao do programa que foi: $$"
echo
echo "A variavel \$? armazena o valor de retorno do ultimo comando|programa executado, que foi: $?"
echo
