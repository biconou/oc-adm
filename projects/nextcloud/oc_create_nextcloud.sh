#!/bin/bash

PROJECT=nextcloud

oc login -u developer
oc new-project $PROJECT

oc login -u system:admin
oc -n openshift process mariadb-persistent -p MYSQL_DATABASE=nextcloud | oc -n $PROJECT create -f -

sleep 20

oc process -f https://raw.githubusercontent.com/tobru/nextcloud-openshift/master/nextcloud.yaml -p NEXTCLOUD_HOST=togodo -p NEXTCLOUD_IMAGE_TAG='13-fpm' | oc -n $PROJECT create -f -

# la sauvegarde
oc process -f https://raw.githubusercontent.com/tobru/nextcloud-openshift/master/mariadb-backup.yaml -p BACKUP_SCHEDULE='0 0 * * *' | oc -n $PROJECT create -f -

# route depuis l'extérieur de la freebox
oc apply -n $PROJECT -f nextcloud-from-outside-route.json