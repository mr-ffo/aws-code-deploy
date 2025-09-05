#!/bin/bash
set -e

echo ">>> Installing app-specific packages..."
cd /home/ec2-user/app
npm install --production
