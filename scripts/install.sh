#!/bin/bash

BASE_DIR=`dirname $0`/..

npm install -g LiveScript
npm install -g nodemon
npm install -g testacular@0.5.6
npm install -g mocha-phantomjs
npm install -g json2htmlcov

cd $BASE_DIR
npm install
