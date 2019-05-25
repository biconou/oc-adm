#!/bin/bash

. ./env.sh

${OC_COMMAND} new-project ${PROJECT}

${OC_COMMAND} new-app --template=mariadb-persistent \
    --param=MYSQL_DATABASE=nextcloud

sleep 20

. ./create_nextcloud.sh

# la sauvegarde
${OC_COMMAND} process -f https://raw.githubusercontent.com/tobru/nextcloud-openshift/master/mariadb-backup.yaml -p BACKUP_SCHEDULE='0 0 * * *' | ${OC_COMMAND} -n $PROJECT create -f -
