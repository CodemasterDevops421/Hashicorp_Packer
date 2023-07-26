#!/bin/bash
sudo apt-get update
sudo apt install nginx
sudo apt install --no-install-recommends php8.1
sudo apt-get install php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath php8.1-fpm
sudo systemctl restart nginx
sudo systemctl restart php8.1-fpm
sudo mkdir -p /var/www/html/
sudo chown -R ubuntu:ubuntu /var/www/html/
mkdir -p /var/www/html/storage/framework/{sessions,views,cache}
chmod -R ugo+rw /var/www/html/storage/framework
chmod -R ugo+rw /var/www/html/storage/logs

