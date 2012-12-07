"use strict"
{PhoneListCtrl,PhoneDetailCtrl}=require \/controllers.ls

# https://github.com/gkz/LiveScript/issues/133
let ii = it
  # jasmine specs for controllers go here 
  describe "PhoneCat controllers", ->
    beforeEach ->
      @addMatchers toEqualData: (expected) ->
        angular.equals @actual, expected


    beforeEach module("phonecatServices")
    describe "PhoneListCtrl", ->
      scope = undefined
      ctrl = undefined
      $httpBackend = undefined
      beforeEach inject((_$httpBackend_, $rootScope, $controller) ->
        $httpBackend := _$httpBackend_
        $httpBackend.expectGET("/phones/phones.json").respond [
          name: "Nexus S"
        ,
          name: "Motorola DROID"
        ]
        scope := $rootScope.$new()
        ctrl := $controller(PhoneListCtrl,
          $scope: scope
        )
      )
      ii "should create \"phones\" model with 2 phones fetched from xhr", ->
        expect(scope.phones).toEqual []
        $httpBackend.flush()
        expect(scope.phones).toEqualData [
          name: "Nexus S"
        ,
          name: "Motorola DROID"
        ]

      ii "should set the default value of orderProp model", ->
        expect(scope.orderProp).toBe "age"


    describe "PhoneDetailCtrl", ->
      scope = undefined
      $httpBackend = undefined
      ctrl = undefined
      xyzPhoneData = ->
        name: "phone xyz"
        images: ["image/url1.png", "image/url2.png"]

      beforeEach inject((_$httpBackend_, $rootScope, $routeParams, $controller) ->
        $httpBackend := _$httpBackend_
        $httpBackend.expectGET("/phones/xyz.json").respond xyzPhoneData()
        $routeParams.phoneId = "xyz"
        scope := $rootScope.$new()
        ctrl := $controller(PhoneDetailCtrl,
          $scope: scope
        )
      )
      ii "should fetch phone detail", ->
        expect(scope.phone).toEqualData {}
        $httpBackend.flush()
        expect(scope.phone).toEqualData xyzPhoneData()


