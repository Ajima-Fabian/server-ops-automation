#!/usr/env/bin bash

# =========================
# Configure Firewall - RHEL
# =========================

log() { echo -e "\e[32m[$(date +'%F %T')]\e[0m $1"; }

log "[INFO] Configuring firewall..."

# Open HTTP, HTTPS, SSH
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --permanent --add-service=ssh

# Reload firewall
sudo firewall-cmd --reload

log "[SUCCESS] Firewall configured."
sudo firewall-cmd --list-all
