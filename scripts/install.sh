#!/bin/bash

BASE_DIR=`dirname $0`/..

npm install -g LiveScript nodemon testacular@0.5.6

cd $BASE_DIR
npm install
