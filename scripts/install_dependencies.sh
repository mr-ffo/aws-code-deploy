#!/bin/bash
# Update package manager and install Node.js and npm
if command -v dnf >/dev/null 2>&1; then
    sudo dnf update -y
    sudo dnf install -y nodejs npm
else
    sudo yum update -y
    sudo yum install -y nodejs npm
fi
# Ensure npm is available and install PM2
if command -v npm >/dev/null 2>&1; then
    sudo npm install -g pm2
else
    echo "npm not found, exiting"
    exit 1
fi