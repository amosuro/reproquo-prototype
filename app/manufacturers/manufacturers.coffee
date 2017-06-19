angular
  .module('reproquoApp.manufacturers', [
    'ngRoute'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/manufacturers", {
      templateUrl: "manufacturers/manufacturers.html",
      controller: 'ManufacturersController'
    })
  ])
  .controller 'ManufacturersController', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $scope.manufacturers = [
        {
          'Manufacturer code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
      ]

      $scope.getHeader = (object) ->
        keys = []
        angular.forEach object, (val, key) ->
          if key != '$$hashKey'
            keys.push key
          return
        keys

      $scope.getValue = (object) ->
        values = []
        angular.forEach object, (val, key) ->
          if key != '$$hashKey'
            values.push val
          return
        values
  ]
