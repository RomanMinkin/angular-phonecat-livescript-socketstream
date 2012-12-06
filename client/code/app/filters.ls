'use strict';

/* Filters */

exports.checkmark =[
->
  (input)->
    if input then '\u2713' else '\u2718'
]

mod = angular.module \phonecatFilters, []
for key of exports
  mod.filter key, exports[key]
