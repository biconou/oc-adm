#!/bin/bash

. ./env.sh

${OC_COMMAND} new-project ${PROJECT}

${OC_COMMAND} create -f openshift/acme_secret.yaml
${OC_COMMAND} create -f openshift/traefik_configmap.yaml
${OC_COMMAND} create -f openshift/deployment.yaml
${OC_COMMAND} create -f openshift/service.yaml