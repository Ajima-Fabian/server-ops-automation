# Web Server Automation on RHEL / CentOS

## Overview

A modular Bash scripting project for automating web server deployment on RHEL/CentOS 8+ systems. It handles NGINX/Apache installation, firewall configuration, multi-site deployment, and SSL certificate setup via Let's Encrypt.

## Project Structure

```
web-server-automation/
├── scripts/
│   ├── deploy_web_server.sh    # Master script — runs all tasks in sequence
│   ├── install_web_server.sh   # Installs NGINX (or Apache)
│   ├── configure_firewall.sh   # Opens HTTP/HTTPS/SSH ports via firewalld
│   ├── deploy_site.sh          # Creates web roots from sites.conf
│   └── setup_ssl.sh            # Installs Certbot and sets up HTTPS
├── configs/
│   └── sites.conf              # CSV list of domains and web roots
├── logs/                       # Script output logs (created at runtime)
└── README.md
```

## Usage

```bash
# Make scripts executable (already done)
chmod +x scripts/*.sh

# Run the master deployment script
bash scripts/deploy_web_server.sh
```

## Configuration

Edit `configs/sites.conf` to define websites:
```
domain,webroot
example.com,/var/www/example
myapp.local,/var/www/myapp
```

## Notes

- Default web server is NGINX. To use Apache, edit `install_web_server.sh` and set `WEB_SERVER="httpd"`, and update `WEB_USER="apache"` in `deploy_site.sh`.
- Scripts require `sudo` privileges and a RHEL/CentOS 8+ environment with `dnf` available.
- SSL setup requires domains to be publicly pointing to the server.
- Logs are written to `logs/deploy.log`.

## Workflow

- **Start application**: Console workflow that displays project info and available scripts.
