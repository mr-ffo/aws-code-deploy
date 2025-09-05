#!/bin/bash
cd /usr/share/nextwork-web-project
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/lib/node_modules/pm2/bin
npm install
pm2 start index.js --name nextwork-app
pm2 save