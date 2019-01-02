#!/bin/bash

. ./env.sh

oc new-project ${PROJECT}

# ajouter docker.elastic.co in master-config.yaml section imagePolicyConfig

oc new-build --allow-missing-imagestream-tags --binary --strategy=docker --name elasticsearch

oc start-build elasticsearch --from-dir=.

oc new-app elasticsearch
