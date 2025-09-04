#!/bin/bash
# Install Apache HTTPD
sudo yum install -y httpd
# Install Node.js and npm from NodeSource
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs
# Install PM2
sudo npm install -g pm2
# Create Apache reverse proxy configuration
sudo cat << EOF > /etc/httpd/conf.d/nodeapp.conf
<VirtualHost *:80>
  ServerAdmin root@localhost
  ServerName app.nextwork.com
  ProxyRequests off
  ProxyPreserveHost On
  ProxyPass / http://localhost:3000/
  ProxyPassReverse / http://localhost:3000/
</VirtualHost>
EOF
# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd