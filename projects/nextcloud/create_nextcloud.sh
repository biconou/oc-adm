#!/bin/bash

. ./env.sh

${OC_COMMAND} process -f nextcloud.yaml -p NEXTCLOUD_HOST=${NEXTCLOUD_HOST} -p NEXTCLOUD_IMAGE_TAG=${NEXTCLOUD_IMAGE_TAG} | ${OC_COMMAND} -n ${PROJECT} create -f -
