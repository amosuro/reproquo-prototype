(function() {
  angular.module('reproquoApp.devices', ['ngRoute']).config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/devices", {
        templateUrl: "devices/devices.html",
        controller: 'DevicesController'
      });
    }
  ]).controller('DevicesController', [
    '$scope', '$http', function($scope, $http) {
      $scope.devices = [
        {
          'Type': '17001',
          'Manufacturer': 'Xerox',
          'Model': 'Z6100',
          'Description': 'Colour Laser Printer',
          'Tech': 'Laser',
          'Ink type': 'UV Curable',
          'Assoc. items': '5',
          'Assoc. customers': '2',
          'Status': 'Live'
        }
      ];
      $scope.getHeader = function(object) {
        var keys;
        keys = [];
        angular.forEach(object, function(val, key) {
          if (key !== '$$hashKey') {
            keys.push(key);
          }
        });
        return keys;
      };
      return $scope.getValue = function(object) {
        var values;
        values = [];
        angular.forEach(object, function(val, key) {
          if (key !== '$$hashKey') {
            values.push(val);
          }
        });
        return values;
      };
    }
  ]);

}).call(this);
