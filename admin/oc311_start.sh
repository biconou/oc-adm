#!/bin/bash

# exécuter en root


HOST=`hostname | tr '[:upper:]' '[:lower:]'`

oc311 cluster up  \
	--base-dir='/mnt/DATA/oc311' \
	--public-hostname=${HOST}
