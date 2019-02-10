#!/bin/bash

. ../env.sh

oc delete template graylog-template
oc create -f graylog-template.yml

oc new-app --template=graylog-template

oc start-build graylog-build --from-dir=.