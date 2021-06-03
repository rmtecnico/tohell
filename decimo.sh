#!/bin/bash
#
# decimo.sh Nosso Decimo programa em Shell -  Backup
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

#BKPDIR - local onde sera armazenado os arquivos de backup.
BKPDIR="/srv/backup/"
#
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="rm.tecnico@hotmail.com"
SENDUSER="root@utah.local"

echo -e "\n"
echo "Iniciando o Script de Backup"
echo -e "\n"
#funcoes
verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi

}

mail(){
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Segue"
}

mail_err(){
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Erro no Backup" -a $ERRORLOG -m "Segue"
}

rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
#funcoes
verificar
mail

[ -f $COMPACT ] || $COMPACT
$COMPACT
#funcoes
verificar

exit 0
