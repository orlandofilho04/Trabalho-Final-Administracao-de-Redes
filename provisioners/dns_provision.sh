#!/bin/bash

apt update
apt install -y docker.io
docker pull coredns/coredns

sudo docker run -d -v /vagrantDNS/Corefile:/etc/coredns/Corefile -v /vagrantDNS/db.example.org:/etc/coredns/db.example.org --restart always -p 8053:53 -p 8053:53/udp coredns/coredns