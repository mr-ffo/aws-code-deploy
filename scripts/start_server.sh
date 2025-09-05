#!/bin/bash
# Navigate to app directory
cd /usr/share/nextwork-web-project
# Install dependencies (ensure CodeArtifact)
npm install
# Start Node.js app with PM2
pm2 start index.js --name nextwork-app
pm2 save