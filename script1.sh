#!/bin/bash

# script01.sh - Emulacao do comando seq em Bash
#
# O comando seq recebe dois numeros e mostra na saida padrao todos os numeros.
# existentes entr eles, numa saquencia pronta para ser usada pelo comando for. Caso omitodo o numero
# inicial, Ã utilizado 1.
#

O=+ 
# decalra o valor da variavel O sendo + (soma)
A=1 
# declara o valor da variavel A igual a 1
Z=${1:-1}
# Caso o parametro nao seja declarado a variavel Z tera o mesmo valor do paramentro informado ($1)

[ "$2" ] && { 
	A=$1
       	Z=$2
	}
# Seo segundo parametro for informado $2 a variavel A recebera o primeiro parametro $1 e a variavel Z o segundo parametro $2

[ $A -gt $Z ] && O=-?q!
# se o valor da variavel A for maior que ao valor da variavel Z a ariavel O sera declarada com o sinal de "-" (subtracao)

while [ $A -ne $Z ]; do 
	echo $A
       	eval "A=\$((A$O 1))"
done
# Enquanto o valor da Variavel Z nao for igual ao valor da variavel A,a sera mostrado o valor

echo $A
