# =========================
# Deploy websites - RHEL
# =========================

CONFIG_FILE="../configs/sites.conf"
WEB_USER="nginx"      
log() { echo -e "\e[32m[$(date +'%F %T')]\e[0m $1"; }

while IFS=',' read -r domain webroot
do
    log "[INFO] Deploying $domain to $webroot..."
    sudo mkdir -p $webroot
    echo "<h1>Welcome to $domain</h1>" | sudo tee $webroot/index.html

    # Set permissions
    sudo chown -R $WEB_USER:$WEB_USER $webroot
    sudo chmod -R 755 $webroot

    log "[SUCCESS] $domain deployed."
done < $CONFIG_FILE
