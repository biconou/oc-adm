#!/usr/bin/env bash

echo "Create the project tomcat8"

oc new-project tomcat8 \
    --display-name='tomcat8' \
    --description='tomcat8' || exit $?

oc create imagestream tomcat8

oc create -f oc/tomcat8-build.json
oc start-build tomcat8-build --from-dir .

oc apply -f oc/tomcat8-deployment.json



