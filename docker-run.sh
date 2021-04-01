#!/usr/bin/env bash
docker stop 5120webpackage
docker rm 5120webpackage
docker run -d  --privileged=true -p 9005:9005 --name 5120webpackage yichenelaine/5120webpackage:20210331195940

docker logs -f 5120webpackage
