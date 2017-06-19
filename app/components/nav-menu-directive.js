(function() {
  'use strict';
  angular.module('reproquoApp.nav-menu-directive', []).directive('navMenu', function($rootScope, $location) {
    var link;
    return link = function(scope, element, attrs) {
      var href;
      href = element.find('a').attr('href');
      element.removeClass('active');
      if (href === ("#" + ($location.path()))) {
        element.addClass('active');
      }
      return $rootScope.$on('$locationChangeSuccess', function() {
        element.removeClass('active');
        if (href === ("#" + ($location.path()))) {
          element.addClass('active');
        }
        return {
          restrict: 'A',
          link: link
        };
      });
    };
  });

}).call(this);
