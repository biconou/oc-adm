#!/bin/bash

HOST=`hostname | tr '[:upper:]' '[:lower:]'`
NEXTCLOUD_HOST=${HOST}
PROJECT=nextcloud
NEXTCLOUD_IMAGE_TAG='15-fpm'