#!/bin/bash

BASE_DIR=`dirname $0`

nodemon --watch server --exec livescript $BASE_DIR/../apls.ls
