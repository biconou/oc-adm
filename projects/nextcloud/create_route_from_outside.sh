#!/bin/bash

. ./env.sh

# route depuis l'extérieur de la freebox
oc apply -n $PROJECT -f nextcloud-from-outside-route.json