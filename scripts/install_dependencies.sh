#!/bin/bash
export PATH=$PATH:/usr/local/bin

echo "Installing Node.js, npm, and PM2..."

# Update packages
yum update -y

# Install Node.js 18 (Amazon Linux 2)
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Install PM2 globally
npm install -g pm2

# Navigate to app directory and install dependencies
cd /home/ec2-user/aws-code-deploy || exit
npm install
