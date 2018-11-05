#!/bin/bash


sudo ./oc_stop.sh
sleep 30
sudo rsync -av /mnt/DATA/oc/ /mnt/SAUV_DATA/oc
cd /mnt/SAUV_DATA
sudo tar -zcvf oc.tar.gz oc
