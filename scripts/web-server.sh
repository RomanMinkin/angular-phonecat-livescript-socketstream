#!/bin/bash

BASE_DIR=`dirname $0`

nodemon --exec livescript $BASE_DIR/../apls.ls
