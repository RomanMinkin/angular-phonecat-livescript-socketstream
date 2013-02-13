# AngularJS Phone Catalog Tutorial Application, in LiveScript with SocketStream 0.3.2

[![Build Status](https://travis-ci.org/yiwang/angular-phonecat-livescript-socketstream.png?branch=master)](https://travis-ci.org/yiwang/angular-phonecat-livescript-socketstream)

## Motivation
- use SocketStream
- make AngularJS unit and E2E Tests work (refer to this [thread](https://groups.google.com/d/topic/socketstream/jDDCkQJpsDM/discussion))
- include unit test coverage report
- use LiveScript, LESS and Jade

## Install
- [node-jscoverage](https://github.com/visionmedia/node-jscoverage), needed for unit test coverage report
- [PhantomJS](http://phantomjs.org/), need by [mocha-phantomjs]( https://github.com/metaskills/mocha-phantomjs) from CLI


Run

    $./scripts/install.sh
besides

    npm install

it also globally install some npm binaries needed, e.g.

    npm -g install testacular@0.5.6
to supports test spec files in LiveScript

## Start Server
    $./scripts/web-server.sh
server listen on [http://localhost:4000/app](http://localhost:4000/app)

## Unit Test

### Mocha in browser
[http://localhost:4000/test/client](http://localhost:4000/test/client)

### Mocha with PhantomJS from CLI
    $./scripts/test.sh 

### Jasmine with Testacular (not optimal)
use SS\_PACK=1 and load the minified js in client/static/assets, in which SS style 'require' is defined:

    $./scripts/test-jasmine.sh 
will run 

    ./scripts/pack.sh

first to only pack files (not launch server)
## Unit Test Coverage Report
First have the web server running

    $./scripts/web-server.sh
then

    $make test-cov

and then visit the html coverage report at [http://localhost:4000/coverage.html](http://localhost:4000/coverage.html)

note the [node-jscoverage](https://github.com/visionmedia/node-jscoverage) instrumented version of mocha test in browser is at [http://localhost:4000/test/client/cov](http://localhost:4000/test/client/cov)

[json2htmlcov](https://github.com/yiwang/json2htmlcov) is used to render the output of

    mocha-phantomjs -R json-cov http://localhost:4000/test/client/cov

## E2E Test
### Browser
url [http://localhost:4000/test/e2e/runner.html](http://localhost:4000/test/e2e/runner.html)

### Testacular
    $./scripts/e2e-test.sh 


