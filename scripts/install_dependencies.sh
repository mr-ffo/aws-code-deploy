#!/bin/bash
set -e

# Load user environment
source /home/ec2-user/.bash_profile

echo "Updating system packages..."
sudo yum update -y

echo "Installing Node.js and npm if not installed..."
if ! command -v node >/dev/null 2>&1; then
  curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi

echo "Installing PM2 globally..."
sudo npm install -g pm2

echo "Navigating to app directory..."
cd /home/ec2-user/app

echo "Installing project dependencies..."
npm install
