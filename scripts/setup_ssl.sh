#!/bin/bash

CONFIG_FILE="../configs/sites.conf"

log() { echo -e "\e[32m[$(date +'%F %T')]\e[0m $1"; }

log "[INFO] Installing Certbot..."
sudo dnf install -y certbot python3-certbot-nginx  # Use python3-certbot-apache for Apache

while IFS=',' read -r domain webroot
do
    log "[INFO] Setting up SSL for $domain..."
    sudo certbot --nginx -d $domain --non-interactive --agree-tos -m admin@$domain
done < $CONFIG_FILE

log "[SUCCESS] SSL setup complete."
