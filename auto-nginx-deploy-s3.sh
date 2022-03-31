#!/bin/bash

# nginxPath 
NPATH=$1
# bucketPath
BPATH=$2

sudo apt update -y
sudo apt upgrade -y

sudo apt install awscli -y
sudo apt install nginx -y

sudo ufw allow 'Nginx HTTP'

sudo mkdir -p /var/www/$NPATH/html

sudo aws s3 sync s3://proyecto-samuel/$BPATH /var/www/$NPATH/html/.

sudo chown -R $USER:$USER /var/www/$NPATH/html

sudo echo 'server {
        listen 80;
        listen [::]:80;

        root /var/www/'$NPATH'/html;
        index index.html index.htm index.nginx-debian.html;

        server_name '$NPATH' www.TsWeb3AC-Dom; # corregir esto aun

        location / {
                try_files $uri $uri/ =404;
        }
}' > test.txt #/etc/nginx/sites-available/TsWeb3AC-Dom

sudo ln -s /etc/nginx/sites-available/TsWeb3AC-Dom /etc/nginx/sites-enabled/

# sudo nginx -t

sudo systemctl restart nginx