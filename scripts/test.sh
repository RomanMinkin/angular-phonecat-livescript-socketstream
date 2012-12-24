#!/bin/bash

BASE_DIR=`dirname $0`/..

cd $BASE_DIR
nodemon --watch client --exec 'bash' scripts/test-mocha.sh
