#!/bin/bash
set -e

export PATH=$PATH:/usr/local/bin
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo ">>> Starting application with PM2..."
cd /home/ec2-user/app
pm2 start app.js --name "node-app" --update-env
pm2 save
