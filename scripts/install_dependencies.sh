#!/bin/bash
set -e

# Ensure PATH includes /usr/local/bin for PM2 and npm
export PATH=$PATH:/usr/local/bin

echo "Installing Apache HTTPD..."
sudo yum install -y httpd

echo "Installing Node.js and npm..."
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

echo "Installing PM2 globally..."
sudo npm install -g pm2

echo "Configuring Apache reverse proxy..."
sudo bash -c 'cat <<EOF > /etc/httpd/conf.d/nodeapp.conf
<VirtualHost *:80>
  ServerAdmin root@localhost
  ServerName app.nextwork.com
  ProxyRequests off
  ProxyPreserveHost On
  ProxyPass / http://localhost:3000/
  ProxyPassReverse / http://localhost:3000/
</VirtualHost>
EOF'

echo "Restarting Apache..."
sudo systemctl restart httpd
sudo systemctl enable httpd
