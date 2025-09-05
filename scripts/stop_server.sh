#!/bin/bash
set -e

# Load user environment
source /home/ec2-user/.bash_profile

echo "Stopping application with PM2 if running..."
if command -v pm2 >/dev/null 2>&1; then
  pm2 stop all || echo "No PM2 processes running"
  pm2 delete all || echo "No PM2 processes to delete"
else
  echo "PM2 not installed—skipping"
fi
