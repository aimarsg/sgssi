#! /bin/bash

fechaactual=$(date +%d-%m-%Y)
fechaayer=$(date -d "-1 days" +%d-%m-%Y)

#carpeta donde se va a guardar
mkdir /var/tmp/Backups/$fechaactual


#utilizar la del dia anterior para comparar si existe
if [ -d "/var/tmp/Backups/$fechaayer" ]
then
	op="--link-dest=/var/tmp/Backups/$fechaayer"
fi

#comando copia
rsync -av $op /home/aimar/Seguridad/ /var/tmp/Backups/$fechaactual
