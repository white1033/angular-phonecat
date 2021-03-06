'use strict'

describe 'Controller: PhonelistCtrl', ->

  # load the controller's module
  beforeEach module 'phonecatApp'

  PhonelistCtrl = {}
  scope = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _$httpBackend_) ->
    $httpBackend = _$httpBackend_
    $httpBackend.expectGET 'phones/phones.json'
      .respond [{name: 'Nexus S'}, {name: 'Motorola DROID'}]
    scope = $rootScope.$new()
    PhonelistCtrl = $controller 'PhonelistCtrl', {
      $scope: scope
    }

  it 'should create "phones" model with 2 phones fetched from xhr', ->
    expect(scope.phones).toBeUndefined()
    $httpBackend.flush()

    expect(scope.phones).toEqual [{name: 'Nexus S'}, {name: 'Motorola DROID'}]

  it 'should set the default value of orderProp model', ->
    expect(scope.orderProp).toBe 'age'
