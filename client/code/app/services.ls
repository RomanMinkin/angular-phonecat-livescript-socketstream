'use strict';

/* Services */
exports.Phone = [
  \$resource
($resource)->
  $resource 'phones/:phoneId.json', {},
    query: {method:'GET', params:{phoneId:'phones'}, isArray:true}
]
angular.module \phonecatServices, ['ngResource'] .factory exports
