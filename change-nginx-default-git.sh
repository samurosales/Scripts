#!/bin/bash

# git repo path
GPATH=$1

# check that everything is up to date
sudo yum check-update -y

# install essencials for the script
sudo yum clean metadata
sudo amazon-linux-extras install nginx1 -y
sudo yum install git -y

# configure nginx server

sudo systemctl enable nginx
sudo systemctl start nginx


# /usr/share/nginx/html
mv /usr/share/nginx/html /usr/share/nginx/html.bak
sudo git clone $GPATH /usr/share/nginx/html