#!/bin/bash

. ./env.sh

oc delete project ${PROJECT}

while oc project ${PROJECT}; do sleep 1; done