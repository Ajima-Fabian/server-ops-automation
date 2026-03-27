# Web Server Automation on RHEL / CentOS


## Overview

This project is a **fully automated, modular web server deployment system** for RHEL/CentOS 8+ systems.  
It automates the installation and configuration of a web server (NGINX or Apache), deploys websites from a configuration file, sets up firewall rules, and enables HTTPS using Let’s Encrypt.

This project demonstrates professional Linux administration, security best practices, and automation.

---

## Features

- Modular and clean scripts
- Install **NGINX** or **Apache** automatically
- Configure firewall with `firewalld` (HTTP, HTTPS, SSH)
- Deploy multiple websites from a single config file
- Set proper file permissions for web server users
- Automatic HTTPS setup via **Certbot**
- Logging with timestamps and colored output
- Fully production-ready and easy to extend

---

## Project Structure
```bash

web-server-automation/
│
├─ scripts/
│  ├─ install_web_server.sh   # Install NGINX or Apache
│  ├─ configure_firewall.sh   # Configure firewall rules
│  ├─ deploy_site.sh          # Deploy websites from config
│  ├─ setup_ssl.sh            # Setup HTTPS using Let’s Encrypt
│  └─ deploy_web_server.sh    # Master script to run all tasks
│
├─ configs/
│  └─ sites.conf              # List of websites (domain, webroot)
│
├─ logs/                      # Script output logs
└─ README.md                  # This file
```
---

## Prerequisites

- **RHEL / CentOS 8+**
- `sudo` privileges
- Internet access for downloading packages and SSL certificates
- Domains must point to your server for SSL to work

---

## Configuration File Example

`configs/sites.conf`
```bash
example.com,/var/www/example
myapp.local,/var/www/myapp
```
- Format: `domain,webroot`
- Supports multiple entries

---

## Usage

### Clone or copy the project

```bash
git clone https://github.com/Ajima-Fabian/server-ops-automation.git
cd web-server-automation
chmod +x scripts/*.sh
```

### Run the Master Script
```bash
bash scripts/deploy_web_server.sh
```

#### This will

Install the web server (NGINX by default)

Configure firewall rules

Deploy websites from sites.conf

Setup SSL certificates using Certbot

---

## View Logs
```bash
cat logs/deploy.log
```
---

## Notes

The default web server is NGINX.

### To switch to Apache (httpd)

Edit scripts/install_web_server.sh and set WEB_SERVER="httpd".

Update WEB_USER="apache" in deploy_site.sh.

---

# Author

Ajima Fabian – Linux System Administrator / DevOps Enthusiast

📧 Email: ajimafabian18@gmail.com

💻 GitHub: https://github.com/Ajima-Fabian
