// This file automatically gets called first by SocketStream and must always exist

// Make 'ss' available to all modules and the browser console
window.ss = require('socketstream');

ss.server.on('disconnect', function(){
  console.log('Connection down :-(');
});

ss.server.on('reconnect', function(){
  console.log('Connection back up :-)');
});

// require('ssAngular');
require('/services.ls');
require('/filters.ls');
require('/controllers.ls');
// require('/directives.ls');
require('/app.ls');

ss.server.on('ready', function(){

  /* angular.element().ready(function(){ */
    require('./specs/controllersSpec.ls');
    if (window.mochaPhantomJS) { mochaPhantomJS.run(); }
      else { mocha.run(); }
  // });

});
