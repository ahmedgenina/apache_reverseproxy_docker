#!/usr/bin/env bash
# Build image 
docker build -t nds/revproxy:v2 .
# create container from image and expose port 80
docker run -d -p 80:80  --name proxy nds/revproxy:v2
