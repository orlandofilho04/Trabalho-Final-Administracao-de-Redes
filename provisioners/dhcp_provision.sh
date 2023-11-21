#!/bin/bash

apt update
apt install -y docker.io
docker pull networkboot/dhcpd

sudo docker run -v dhcpd_data:/data --name temp_container busybox true
sudo docker cp "/vagrant_DockerDHCP/dhcpd.conf" temp_container:/data/dhcpd.conf
sudo docker rm temp_container


sudo docker run -d --net=host -v dhcpd_data:/data --restart always -p 67:67/udp networkboot/dhcpd