#!/bin/bash
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/lib/node_modules/pm2/bin
# Check if PM2 process is running
if pm2 list | grep -q nextwork-app; then
    echo "Node.js app is running"
    exit 0
else
    echo "Node.js app is not running"
    exit 1
fi