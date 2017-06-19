#!/usr/bin/env bash

# Author = 'Jiamao Zheng <jiamaoz@yahoo.com>'

# adjust docker memory 
docker-machine stop
VBoxManage modifyvm default --cpus 2
VBoxManage modifyvm default --memory 10000
docker-machine start
eval $(docker-machine env default)