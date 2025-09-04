#!/bin/bash
# Start the Node.js app with PM2, naming it 'nextwork-app'
pm2 start /usr/share/nextwork-web-project/index.js --name nextwork-app
# Save PM2 configuration to auto-restart on reboot
pm2 save