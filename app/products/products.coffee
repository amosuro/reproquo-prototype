angular
  .module('reproquoApp.products', [
    'ngRoute'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/products", {
      templateUrl: "products/products.html",
      controller: 'ProductsController'
    })
  ])
  .controller 'ProductsController', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $scope.products = [
        {
          'Code': 'UX1234AB'
          'Description': 'Product description'
          'Type': 'Pack'
          'Size': '800x115 mm'
          'Weight': '300'
          'Box qty.': 'x2'
          'Tech': 'Inkjet'
          'Mfr.': 'Colormagic'
          'Cost': '£5.00'
          'Retail': '£5.00'
          'Stock': '20'
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
