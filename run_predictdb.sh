#!/usr/bin/env bash

# Author = 'Jiamao Zheng <jiamaoz@yahoo.com>'

# Navigage to the directory where the Dockerfile is located  
cd /Volumes/im-lab/nas40t2/jiamao/Projects/microRNA/model_pipeline/model_pipeline/dockers 

# Build an image from the Dockerfile 
docker build -t predictdb .

# Run a Docker image as a Container and mounts host directory in the Container 
docker run -v /Volumes/im-lab/nas40t2/jiamao/Projects/microRNA/model_pipeline/model_pipeline/args_v0.01:/args_v0.01 -it predictdb