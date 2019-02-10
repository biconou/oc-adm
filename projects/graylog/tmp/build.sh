#!/bin/bash

docker build -t mygraylog .

docker stop graylog; docker rm graylog

docker run --name graylog mygraylog