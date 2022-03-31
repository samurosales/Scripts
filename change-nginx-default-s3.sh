#!/bin/bash

# bucket path
BPATH=$1

# check that everything is up to date
sudo yum check-update -y

# install essencials for the script
sudo yum clean metadata
sudo amazon-linux-extras install nginx1 -y

# configure nginx server

sudo systemctl enable nginx
sudo systemctl start nginx


# /usr/share/nginx/html
sudo mv /usr/share/nginx/html /usr/share/nginx/html.bak
sudo aws s3 sync s3://proyecto-samuel/$BPATH /usr/share/nginx/html/.