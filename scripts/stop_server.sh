#!/bin/bash
export PATH=$PATH:/usr/local/bin

echo "Stopping existing PM2 process..."
pm2 stop all || echo "No PM2 processes found"
pm2 delete all || echo "No PM2 processes to delete"
