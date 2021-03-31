#!/usr/bin/env bash
docker stop xgtrace-portal
docker rm xgtrace-portal
docker run -d  --privileged=true -p 9081:9081 --name xgtrace-portal 10.10.208.193:5000/xgtrace-portal:20201223174254

docker logs -f xgtrace-portal
