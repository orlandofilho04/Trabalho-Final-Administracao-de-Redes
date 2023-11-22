#!/bin/bash

apt update
apt install -y docker.io
docker pull httpd

sudo docker run -d -v /var/www/html:/usr/local/apache2/htdocs/ --restart always -p 80:80 httpd