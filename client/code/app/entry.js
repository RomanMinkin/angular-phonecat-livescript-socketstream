// Make 'ss' available to all modules and the browser console
window.ss = require('socketstream');

ss.server.on('disconnect', function(){
  console.log('Connection down :-(');
});

ss.server.on('reconnect', function(){
  console.log('Connection back up :-)');
});

require('./app.ls');
require('./controllers.ls');
require('./services.ls');
require('./filters.ls');

ss.server.on('ready', function(){

  angular.element().ready(function(){
    console.log('app start');

  });

});
