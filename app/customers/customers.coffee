angular
  .module('reproquoApp.customers', [
    'ngRoute'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/customers", {
      templateUrl: "customers/customers.html",
      controller: 'CustomersController'
    })
  ])
  .controller 'CustomersController', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $scope.customers = [
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
          'Company name': 'Paper Sales Ltd'
          'Telephone': '01245 000 000'
          'Fax': '01245 000 000'
          'Email': 'sales@papersalesltd.co.uk'
          'Postcode': 'E17 1YT'
        }
        {
          'A/C code': '41001'
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
