(function() {
  angular.module('reproquoApp.products', ['ngRoute']).config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/products", {
        templateUrl: "products/products.html",
        controller: 'ProductsController'
      });
    }
  ]).controller('ProductsController', [
    '$scope', '$http', function($scope, $http) {
      $scope.products = [
        {
          'Code': 'UX1234AB',
          'Description': 'Product description',
          'Type': 'Pack',
          'Size': '800x115 mm',
          'Weight': '300',
          'Box qty.': 'x2',
          'Tech': 'Inkjet',
          'Mfr.': 'Colormagic',
          'Cost': '£5.00',
          'Retail': '£5.00',
          'Stock': '20'
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
