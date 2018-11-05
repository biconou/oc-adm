#!/bin/bash

oc set volumes deploymentConfig/airsonic-webapp

oc set volumes deploymentConfig/airsonic-webapp --name="music" --remove
 
oc set volumes deploymentConfig/airsonic-webapp \
  --add \
  --type="hostPath" \
  --name="music" \
  --path="/var/music" \
  --mount-path="/mnt/DATA" \
  --containers="airsonic-webapp"

oc set volumes deploymentConfig/airsonic-webapp \
  --add \
  --type="hostPath" \
  --name="music" \
  --path="/var/music" \
  --mount-path="/mnt/DATA" \
  --containers="airsonic-webapp"

