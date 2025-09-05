#!/bin/bash
set -e

export PATH=$PATH:/usr/local/bin
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo ">>> Stopping PM2 processes..."
pm2 stop all || true
pm2 delete all || true
