#!/bin/bash
# Stop and delete the 'nextwork-app' process if it exists
pm2 stop nextwork-app
pm2 delete nextwork-app