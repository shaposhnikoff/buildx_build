#!/bin/sh

dated=`date +%Y-%m-%d-%H%M%S`

git add .
git commit -m "on "${dated} 
git push -u origin main
