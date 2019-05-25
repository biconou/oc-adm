#!/bin/bash

# exécuter en root


HOST=`hostname | tr '[:upper:]' '[:lower:]'`

${OC_COMMAND} cluster up  \
	--host-config-dir='/mnt/DATA/oc/config' \
	--host-data-dir='/mnt/DATA/oc/data' \
	--host-pv-dir='/mnt/DATA/oc/pv' \
	--host-volumes-dir='/mnt/DATA/oc/volumes' \
	--public-hostname=${HOST} \
	--use-existing-config=true  
