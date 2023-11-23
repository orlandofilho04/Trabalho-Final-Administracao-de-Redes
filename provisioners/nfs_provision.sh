#!/bin/bash

apt update
sudo apt install -y docker.io
docker pull itsthenetwork/nfs-server-alpine

sudo docker run -d --restart always --name nfs -p 2049:2049 --privileged -v /some/where/fileshare:/nfsshare -e SHARED_DIRECTORY=/nfsshare itsthenetwork/nfs-server-alpine:latest


