#!/bin/bash
export PATH=$PATH:/usr/local/bin
echo "Starting application with PM2..."

cd /home/ec2-user/aws-code-deploy || exit
pm2 start server.js --name "favour-app"
pm2 save
pm2 startup
