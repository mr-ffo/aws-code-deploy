#!/bin/bash
export PATH=$PATH:/usr/local/bin
echo "Stopping application with PM2..."

if command -v pm2 >/dev/null 2>&1; then
  pm2 stop all || true
  pm2 delete all || true
else
  echo "PM2 not found, skipping stop process."
fi
