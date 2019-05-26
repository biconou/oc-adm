#!/bin/bash

. ./env.sh

${OC_COMMAND} new-project ${PROJECT}

${OC_COMMAND} create -f ekstack-template.yml

${OC_COMMAND} new-app --template=ekstack-template

${OC_COMMAND} start-build elasticsearch --from-dir=.