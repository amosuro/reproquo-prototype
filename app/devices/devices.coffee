angular
  .module('reproquoApp.devices', [
    'ngRoute'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/devices", {
      templateUrl: "devices/devices.html",
      controller: 'DevicesController'
    })
  ])
  .controller 'DevicesController', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $scope.devices = [
        {
          'Type': '17001'
          'Manufacturer': 'Xerox'
          'Model': 'Z6100'
          'Description': 'Colour Laser Printer'
          'Tech': 'Laser'
          'Ink type': 'UV Curable'
          'Assoc. items': '5'
          'Assoc. customers': '2'
          'Status': 'Live'
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
