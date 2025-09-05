#!/bin/bash
export PATH=$PATH:/usr/local/bin
pm2 stop nextwork-app || true
pm2 delete nextwork-app || true