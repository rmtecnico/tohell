#!/bin/bash
#
# oitavoo.sh Nosso Oitavo programa em Shell -  condicional case
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
# $ ./oitavo.sh
# O valor /etc/xyz.conf foi encontrado no diretorio /etc
#
#

ARQUIVOS="/etc/*.conf"

echo
echo "Bem Vindo ao Programa de Listagem de Confs"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretorio /etc/."
done

exit 0
