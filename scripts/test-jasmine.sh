#!/bin/bash

BASE_DIR=`dirname $0`/..

cd $BASE_DIR
scripts/pack.sh

echo ""
echo "Starting Testacular Server (http://vojtajina.github.com/testacular)"
echo "-------------------------------------------------------------------"


testacular start config/testacular.conf.js $*
