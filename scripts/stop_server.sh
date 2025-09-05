#!/bin/bash
set -e

# Ensure PATH includes PM2
export PATH=$PATH:/usr/local/bin

echo "Stopping Apache..."
isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
    sudo systemctl stop httpd.service
fi

echo "Stopping Node.js app using PM2..."
pm2 delete index.js || true
