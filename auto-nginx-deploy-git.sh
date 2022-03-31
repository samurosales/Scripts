#!/bin/bash

# nginx path 
# NPATH=$1

# git repo path
GPATH=$2

# check that everything is up to date
sudo yum check-update -y

# install essencials for the script
sudo yum clean metadata
sudo amazon-linux-extras -y install nginx1

# configure nginx server

sudo systemctl enable nginx
sudo systemctl start nginx


# /usr/share/nginx/html
mv /usr/share/nginx/html /usr/share/nginx/html.bak
sudo git clone $GPATH /usr/share/nginx/html


# sudo mkdir -p /var/www/$NPATH/html

# sudo git clone $BPATH /var/www/$NPATH/html

# sudo chown -R $USER:$USER /var/www/$NPATH/html

# sudo echo 'server {
#         listen 80;
#         listen [::]:80;

#         root /var/www/'$NPATH'/html;
#         index index.html index.htm index.nginx-debian.html;

#         server_name '$NPATH' www.TsWeb3AC-Dom; # corregir esto aun

#         location / {
#                 try_files $uri $uri/ =404;
#         }
# }' > /etc/nginx/sites-available/TsWeb3AC-Dom

# sudo ln -s /etc/nginx/sites-available/TsWeb3AC-Dom /etc/nginx/sites-enabled/

# sudo nginx -t

# sudo systemctl restart nginx