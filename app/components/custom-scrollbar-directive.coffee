angular
  .module('reproquoApp.custom-scrollbar-directive', [])
  .directive 'customScrollbar', ->
    {
      restrict: 'A'
    }

    link: (scope, element, attrs) ->
      $(element).mCustomScrollbar
        axis: 'x'
        autoHideScrollbar: true
