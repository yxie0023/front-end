#!/usr/bin/env bash
version=`date +%Y%m%d%H%M%S`;
echo "build trace version $version"
npm run build

docker rm `docker ps -a -q`

docker rmi --force `docker images | grep xgtrace-portal | awk '{print $3}'`
docker rmi --force `docker images | grep none | awk '{print $3}'`

docker build -t xgtrace-portal:$version ./docker



docker tag xgtrace-portal:$version 10.10.208.193:5000/xgtrace-portal:$version

docker push 10.10.208.193:5000/xgtrace-portal:$version

echo "build admin sucess 10.10.208.193:5000/xgtrace-portal:$version"

