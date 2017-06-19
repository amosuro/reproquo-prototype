(function() {
  angular.module('reproquoApp.chosen-directive', []).directive('chosen', function() {
    ({
      restrict: 'A'
    });
    return {
      link: function(scope, element, attrs) {
        return $(element).chosen();
      }
    };
  });

}).call(this);
