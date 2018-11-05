#!/bin/bash

oc login -u system:admin

oc delete scc hostpath

oc get scc | cut -f 1 -d " "

oc create -f scc_hostpath.json
oc patch scc hostpath -p '{"allowHostDirVolumePlugin": true}'
oc adm policy add-scc-to-group hostpath system:authenticated

echo "verify that hostpath scc exist"
oc get scc | grep hostpath

