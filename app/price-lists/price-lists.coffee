angular
  .module('reproquoApp.priceLists', [
    'ngRoute'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/price-lists", {
      templateUrl: "price-lists/price-lists.html",
      controller: 'PriceListsController'
    })
  ])
  .controller 'PriceListsController', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $scope.priceLists = [
        {
          'Group ref.': 'C1'
          'A/C ref.': '14001'
          'Sub group': 'P1'
          'Customers': 'Paper Sales Ltd'
          'Description': 'Display Inkjet Cartridges'
          'Pricing type': 'Fixed'
          'Currency': 'GBP'
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
