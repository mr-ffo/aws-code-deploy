#!/bin/bash
set -e

# Load user environment
source /home/ec2-user/.bash_profile

echo "Navigating to app directory..."
cd /home/ec2-user/app

echo "Starting application with PM2..."
pm2 start app.js --name "node-app"

echo "Saving PM2 process list..."
pm2 save

echo "Setting up PM2 to start on reboot..."
pm2 startup systemd -u ec2-user --hp /home/ec2-user
