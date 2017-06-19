(function() {
  angular.module('reproquoApp.orders', ['ngRoute']).config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/orders", {
        templateUrl: "orders/orders.html",
        controller: 'OrdersController'
      });
    }
  ]).controller('OrdersController', [
    '$scope', '$http', function($scope, $http) {
      $scope.orders = [
        {
          'No.': '10023',
          'A/C code': '41001',
          'Date': '23/01/2015',
          'Order no.': '13001',
          'Company name': 'Paper Sales Ltd',
          'Net (£)': '99.99',
          'Order': '',
          'Invoice': '',
          'Dispatch': ''
        }, {
          'No.': '10023',
          'A/C code': '41001',
          'Date': '23/01/2015',
          'Order no.': '13001',
          'Company name': 'Paper Sales Ltd',
          'Net (£)': '99.99',
          'Order': '',
          'Invoice': '',
          'Dispatch': ''
        }, {
          'No.': '10023',
          'A/C code': '41001',
          'Date': '23/01/2015',
          'Order no.': '13001',
          'Company name': 'Paper Sales Ltd',
          'Net (£)': '99.99',
          'Order': '',
          'Invoice': '',
          'Dispatch': ''
        }, {
          'No.': '10023',
          'A/C code': '41001',
          'Date': '23/01/2015',
          'Order no.': '13001',
          'Company name': 'Paper Sales Ltd',
          'Net (£)': '99.99',
          'Order': '',
          'Invoice': '',
          'Dispatch': ''
        }, {
          'No.': '10023',
          'A/C code': '41001',
          'Date': '23/01/2015',
          'Order no.': '13001',
          'Company name': 'Paper Sales Ltd',
          'Net (£)': '99.99',
          'Order': '',
          'Invoice': '',
          'Dispatch': ''
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
