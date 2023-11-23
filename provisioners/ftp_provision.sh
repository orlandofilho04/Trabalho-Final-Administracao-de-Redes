#!/bin/bash

set -e

apt update
apt install -y docker.io
sudo docker pull ustclug/ftp

LOCAL_DIR=$(pwd)
sudo docker run -itd --restart=always \
    -p 20:20 \
    -p 21:21 \
    -p 2222:22 \
    -p 8080:80 \
    -p 40000-50000:40000-50000 \
    -p 990:990 \
    -v $LOCAL_DIR/data:/srv/ftp \
    -v $LOCAL_DIR/log:/var/log \
    -e PRIVATE_PASSWD=secret \
    -e PASV_ADDRESS=192.168.56.10 \
    ustclug/ftp