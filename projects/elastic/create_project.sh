#!/bin/bash

. ./env.sh

oc new-project ${PROJECT}

oc create -f ekstack-template.yml

oc new-app --template=ekstack-template

oc start-build elasticsearch --from-dir=.