#!/bin/bash

BASE_DIR=`dirname $0`

./$BASE_DIR/../scripts/pack.sh

echo ""
echo "Starting Testacular Server (http://vojtajina.github.com/testacular)"
echo "-------------------------------------------------------------------"


testacular start $BASE_DIR/../config/testacular.conf.js $*
