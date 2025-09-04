#!/bin/bash
# Try dnf first, fall back to yum
if command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y nodejs npm
else
    sudo yum install -y nodejs npm
fi
sudo npm install -g pm2