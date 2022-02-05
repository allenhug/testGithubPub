#!/bin/sh

#set -x 

cd $(dirname "$0")/../

rm data/*

time=`date '+%d%H%M'`

echo ok > data/$time.txt 

time=`date -v+1M '+%d%H%M' 2>/dev/null || date -d '1 minute' '+%d%H%M'` 

echo ok > data/$time.txt

git add -A 

git commit -m init -q

git push -q

exit 
