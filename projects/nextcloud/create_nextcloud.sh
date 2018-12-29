#!/bin/bash

. ./env.sh

oc process -f nextcloud.yaml -p NEXTCLOUD_HOST=${NEXTCLOUD_HOST} -p NEXTCLOUD_IMAGE_TAG=${NEXTCLOUD_IMAGE_TAG} | oc -n ${PROJECT} create -f -
