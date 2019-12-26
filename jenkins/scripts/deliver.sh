#!/usr/bin/env bash

echo 'The following Docker command build ngix image'
set -x
DATE=`date +%m%d%H%M `
DIR="."
sudo /usr/bin/docker build -t nginx_$DATE $DIR | tee $DIR/Docker_build_result.log
RESULT=$(cat $DIR/Docker_build_result.log | tail -n 1)
if [["$RESULT" != *Successfully*]];then
  exit -1
fi
set +x