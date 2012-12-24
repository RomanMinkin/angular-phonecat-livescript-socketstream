# AngularJS Phone Catalog Tutorial Application, in LiveScript with SocketStream 0.3.2

## Motivation
- use SocketStream
- make AngularJS Unit and E2E Tests work (refer to this [thread](https://groups.google.com/d/topic/socketstream/jDDCkQJpsDM/discussion))
- use LiveScript, LESS and Jade

## Install
    $./scripts/install.sh
inside which performs

    npm -g install testacular@0.5.6
to supports test spec files in LiveScript

## Start Server
    $./scripts/web-server.sh
server listen on [http://localhost:4000/app](http://localhost:4000/app)

## Unit Test

### Mocha in browser
[http://localhost:4000/test/client](http://localhost:4000/test/client)

### Mocha with PhantomJS
    $./scripts/test.sh 

### Jasmine with Testacular
use SS\_PACK=1 and load the minified js in client/static/assets, in which SS style 'require' is defined:

    $./scripts/test-jasmine.sh 
will run 

    ./scripts/pack.sh

first to only pack files (not launch server)

## E2E Test
### Browser
url [http://localhost:4000/test/e2e/runner.html](http://localhost:4000/test/e2e/runner.html)

### Testacular
    $./scripts/e2e-test.sh 


