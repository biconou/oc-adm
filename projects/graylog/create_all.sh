#!/bin/bash

. ./env.sh

oc new-project ${PROJECT}
until oc project ${PROJECT}; do sleep 1; done

oc new-app --template=mongodb-persistent -p DATABASE_SERVICE_NAME=mongo -p MONGODB_DATABASE=graylog --name=mongodb

oc apply -f graylog-is.yml
oc apply -f graylog-bc.yml
oc start-build graylog-build --from-dir=/mnt/DATA/develop/graylog-docker
oc apply -f graylog-dc.yml
oc apply -f graylog-svc.yml