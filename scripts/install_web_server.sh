#!/bin/bash

# Modular installation script for Apache or NGINX

# Configurable variable
WEB_SERVER="nginx"   # Change to 'apache2' if preferred

echo "[INFO] Installing $WEB_SERVER..."
sudo dnf update -y && sudo dnf install -y $WEB_SERVER

# Enable and start the service
sudo systemctl enable $WEB_SERVER
sudo systemctl start $WEB_SERVER

# Verify installation
if systemctl is-active --quiet $WEB_SERVER; then

	# Success message if installed.
    echo "[SUCCESS] $WEB_SERVER installed and running."
else
	# Error message if any.
    echo "[ERROR] $WEB_SERVER failed to start."
    exit 1
fi
