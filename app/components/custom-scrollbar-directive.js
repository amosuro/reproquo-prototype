(function() {
  angular.module('reproquoApp.custom-scrollbar-directive', []).directive('customScrollbar', function() {
    ({
      restrict: 'A'
    });
    return {
      link: function(scope, element, attrs) {
        return $(element).mCustomScrollbar({
          axis: 'x',
          autoHideScrollbar: true
        });
      }
    };
  });

}).call(this);
