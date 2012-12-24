#!/bin/bash

BASE_DIR=`dirname $0`

nodemon --exec ./$BASE_DIR/test-once.sh
