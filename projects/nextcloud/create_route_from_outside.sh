#!/bin/bash

. ./env.sh

# route depuis l'extérieur de la freebox
${OC_COMMAND} apply -n $PROJECT -f nextcloud-from-outside-route.json