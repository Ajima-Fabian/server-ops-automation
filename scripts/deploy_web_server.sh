#!/bin/bash

SCRIPTS_DIR="$(dirname "$0")"

bash $SCRIPTS_DIR/install_web_server.sh
bash $SCRIPTS_DIR/configure_firewall.sh
bash $SCRIPTS_DIR/deploy_site.sh
bash $SCRIPTS_DIR/setup_ssl.sh

echo -e "\e[32m[INFO]\e[0m Web server deployment complete!"
