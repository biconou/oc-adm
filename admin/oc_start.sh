#!/bin/bash

# exécuter en root

OC_HOME="/mnt/DATA/software/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit"

HOST=`hostname | tr '[:upper:]' '[:lower:]'`

${OC_HOME}/oc cluster up  \
	--host-config-dir='/mnt/DATA/oc/config' \
	--host-data-dir='/mnt/DATA/oc/data' \
	--host-pv-dir='/mnt/DATA/oc/pv' \
	--host-volumes-dir='/mnt/DATA/oc/volumes' \
	--public-hostname=${HOST} \
	--use-existing-config=true  
