#!/bin/bash
set -e

echo ">>> Updating packages..."
sudo yum update -y

echo ">>> Installing Node.js and npm..."
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

echo ">>> Installing PM2 globally..."
sudo npm install -g pm2

echo ">>> Installing application dependencies..."
cd /home/ec2-user/app
npm install
