angular
  .module('reproquoApp', [
    'ngRoute',
    'reproquoApp.products',
    'reproquoApp.orders',
    'reproquoApp.customers',
    'reproquoApp.suppliers',
    'reproquoApp.manufacturers',
    'reproquoApp.devices',
    'reproquoApp.priceLists',
    'reproquoApp.chosen-directive',
    'reproquoApp.nav-menu-directive',
    'reproquoApp.custom-scrollbar-directive'
  ])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.otherwise({templateUrl: "products/products.html"})
  ])
