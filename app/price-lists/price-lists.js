(function() {
  angular.module('reproquoApp.priceLists', ['ngRoute']).config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/price-lists", {
        templateUrl: "price-lists/price-lists.html",
        controller: 'PriceListsController'
      });
    }
  ]).controller('PriceListsController', [
    '$scope', '$http', function($scope, $http) {
      $scope.priceLists = [
        {
          'Group ref.': 'C1',
          'A/C ref.': '14001',
          'Sub group': 'P1',
          'Customers': 'Paper Sales Ltd',
          'Description': 'Display Inkjet Cartridges',
          'Pricing type': 'Fixed',
          'Currency': 'GBP'
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
