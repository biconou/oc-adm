#!/bin/bash

docker build -t nextcloud-apache .

docker stop nextcloud-apache
docker rm nextcloud-apache

VOLUMES_DIR=`pwd`/volume

docker run --publish 8081:80 \
    --volume ${VOLUMES_DIR}/data:/var/www/html/data \
    --volume ${VOLUMES_DIR}/config:/var/www/html/config \
    --volume ${VOLUMES_DIR}/apps:/var/www/html/custom_apps \
    --detach \
    --name nextcloud-apache nextcloud-apache

docker exec -it nextcloud-apache bash
