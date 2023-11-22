#!/bin/bash

apt update
apt install -y docker.io
docker pull openebs/nfs-server-alpine

sudo docker run -d --restart always -p 2049:2049/udp openebs/nfs-server-alpine