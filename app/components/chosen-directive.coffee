angular
  .module('reproquoApp.chosen-directive', [])
  .directive 'chosen', ->
    {
      restrict: 'A'
    }
    
    link: (scope, element, attrs) ->
      $(element).chosen()
