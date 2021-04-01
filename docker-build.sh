#!/usr/bin/env bash
version=`date +%Y%m%d%H%M%S`;
echo "build trace version $version"
npm run build

docker rm `docker ps -a -q`

docker rmi --force `docker images | grep yichenelaine/5120webpackage | awk '{print $3}'`
docker rmi --force `docker images | grep none | awk '{print $3}'`

docker build -t yichenelaine/5120webpackage:$version ./docker


docker tag yichenelaine/5120webpackage:$version yichenelaine/5120webpackage:$version

docker push yichenelaine/5120webpackage:$version

echo "build admin sucess yichenelaine/5120webpackage:$version"

