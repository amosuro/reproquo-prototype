(function() {
  angular.module('reproquoApp.manufacturers', ['ngRoute']).config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/manufacturers", {
        templateUrl: "manufacturers/manufacturers.html",
        controller: 'ManufacturersController'
      });
    }
  ]).controller('ManufacturersController', [
    '$scope', '$http', function($scope, $http) {
      $scope.manufacturers = [
        {
          'Manufacturer code': '41001',
          'Company name': 'Paper Sales Ltd',
          'Telephone': '01245 000 000',
          'Fax': '01245 000 000',
          'Email': 'sales@papersalesltd.co.uk',
          'Postcode': 'E17 1YT'
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
