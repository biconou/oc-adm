#!/bin/bash

. ./env.sh

oc new-project ${PROJECT}

oc new-app --template=mariadb-persistent \
    --param=MYSQL_DATABASE=nextcloud

sleep 20

. ./create_nextcloud.sh

# la sauvegarde
oc process -f https://raw.githubusercontent.com/tobru/nextcloud-openshift/master/mariadb-backup.yaml -p BACKUP_SCHEDULE='0 0 * * *' | oc -n $PROJECT create -f -
