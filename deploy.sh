#!/usr/bin/env bash

cd ~/go/src/github.com/Zhanat87/golang-hydra
go install
git add . && git commit -m 'deploy' && git push origin master
docker stop $(docker ps -a -q)
docker rmi $(docker images --filter=reference='zhanat87/golang-hydra') -f
docker build -t zhanat87/golang-hydra .
docker push zhanat87/golang-hydra
docker images

echo "deploy success"
