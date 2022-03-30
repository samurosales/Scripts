
#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install awscli -y
sudo apt install nginx -y

sudo ufw allow 'Nginx HTTP'

sudo mkdir -p /var/www/TsWeb3AC-Dom/html

sudo aws s3 sync s3://proyecto-samuel/TsWeb3AC /var/www/TsWeb3AC-Dom/html.

sudo chown -R $USER:$USER /var/www/TsWeb3AC-Dom/html

sudo su
sudo echo 'server {
        listen 80;
        listen [::]:80;

        root /var/www/TsWeb3AC-Dom/html;
        index index.html index.htm index.nginx-debian.html;

        server_name TsWeb3AC-Dom www.TsWeb3AC-Dom;

        location / {
                try_files $uri $uri/ =404;
        }
}' > /etc/nginx/sites-available/TsWeb3AC-Dom
exit

sudo ln -s /etc/nginx/sites-available/TsWeb3AC-Dom /etc/nginx/sites-enabled/

# sudo nginx -t

sudo systemctl restart nginx