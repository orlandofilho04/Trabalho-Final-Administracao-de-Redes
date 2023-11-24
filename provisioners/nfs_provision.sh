#!/bin/bash

apt update
sudo apt install -y docker.io
docker pull thiagofelix/nfs_ubuntu

sudo docker run -d --restart always -e SYNC=true --name nfs -p 2049:2049 --privileged -v /DockerNFS/:/nfsshare -e SHARED_DIRECTORY=/nfsshare thiagofelix/nfs_ubuntu


