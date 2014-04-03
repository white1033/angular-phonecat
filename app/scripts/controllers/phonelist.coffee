'use strict'

angular.module('phonecatApp')
  .controller 'PhonelistCtrl', ($scope, $http) ->
    $http.get('phones/phones.json').success (data) ->
      $scope.phones = data

    $scope.orderProp = 'age'
