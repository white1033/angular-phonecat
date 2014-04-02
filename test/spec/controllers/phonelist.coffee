'use strict'

describe 'Controller: PhonelistCtrl', ->

  # load the controller's module
  beforeEach module 'phonecatApp'

  PhonelistCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PhonelistCtrl = $controller 'PhonelistCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.phones.length).toBe 3

  it 'should set the default value of orderProp model', ->
    expect(scope.orderProp).toBe 'age'
