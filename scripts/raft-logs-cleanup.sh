#!/bin/bash

cd /opt/AxxonSoft/RaFT/data/Nodes

find . -type f - name "*.gz" -mtime +3 -delete -print
find . -type f - name "*.dmp" -mtime +3 -delete -print
find . -type f - name "*.log" -mtime +3 -delete -print

cd /tmp

find . -maxdepth 1 -name "tmp.*" -type d -mtime +3 -print -exec rm -Rf {} \;

echo "All logs cleaned"