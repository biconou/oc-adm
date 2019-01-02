#!/bin/bash

. ./env.sh

oc new-app docker.elastic.co/kibana/kibana:6.5.4
