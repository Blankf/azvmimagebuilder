#!/bin/bash -e

mkdir /var/log/staging
touch /var/log/staging/creativityAtItsBest.md
echo Azure-Image-Builder-Was-Here  > /var/log/staging/azvmimagebuilder.log

apt-get update
apt-get install -y nginx

# Enable and start Nginx service
systemctl enable nginx
systemctl start nginx
