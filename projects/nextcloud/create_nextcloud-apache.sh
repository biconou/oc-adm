#!/bin/bash

. ./env.sh

oc create -f nextcloud-apache-template.yml

oc new-app --template=nextcloud-apache -p NEXTCLOUD_HOST=${NEXTCLOUD_HOST}

oc start-build nextcloud --from-dir=.
