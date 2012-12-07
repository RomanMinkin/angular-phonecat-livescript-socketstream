# AngularJS Phone Catalog Tutorial Application, in LiveScript with SocketStream 0.3.2

## Install
    $./scripts/install.sh
inside which performs

    npm -g install testacular@0.5.5
to supports test spec files in LiveScript

## Start Server
    $./scripts/web-server.sh
server listen on [http://localhost:4000](http://localhost:4000)

## Unit Test
use SS\_PACK=1 and load the minified js in client/static/assets, in which 'require' is defined:

    $./scripts/test.sh 
will run 

    ./scripts/pack.sh

first to only pack files (not launch server)

## E2E Test
### Browser
url [http://localhost:4000/test/e2e](http://localhost:4000/test/e2e)

### Testacular
    $./scripts/e2e-test.sh 
