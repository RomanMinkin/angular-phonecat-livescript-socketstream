'use strict';

/* mocha specs for filters go here */

describe('filter', function() {

  beforeEach(angular.mock.module('phonecatFilters'));


  describe('checkmark', function() {

    it('should convert boolean values to unicode checkmark or cross',
        inject(function(checkmarkFilter) {
      expect(checkmarkFilter(true)).to.equal('\u2713');
      expect(checkmarkFilter(false)).to.equal('\u2718');
    }));
  });
});
