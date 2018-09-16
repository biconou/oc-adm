#!/usr/bin/env bash

echo "Create the project airsonic"

oc new-project airsonic \
    --display-name='Airsonic' \
    --description='Airsonic on OpenShift' || exit $?

oc new-app --template=postgresql-persistent \
    --param=DATABASE_SERVICE_NAME=postgresql \
    --param=POSTGRESQL_DATABASE=airsonic \
    --param=MEMORY_LIMIT=128Mi \
    --param=VOLUME_CAPACITY=1Gi \
    --param=POSTGRESQL_VERSION=9.5


oc create imagestream airsonic-webapp

oc create -f oc/airsonic-webapp-build.json
oc start-build airsonic-webapp-build --from-dir .

oc apply -f oc/airsonic-webapp-deployment.json
oc apply -f oc/airsonic-webapp-service.json
oc apply -f oc/airsonic-webapp-route.json

