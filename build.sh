#!/bin/sh
docker ps -a | grep bsarda/puppetserver | awk '{print $1}' | xargs -n1 docker rm -f
docker rmi bsarda/puppetserver
docker build -t bsarda/puppetserver .

