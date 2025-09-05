#!/bin/bash
export PATH=$PATH:/usr/local/bin:/usr/bin
pm2 stop nextwork-app || true
pm2 delete nextwork-app || true