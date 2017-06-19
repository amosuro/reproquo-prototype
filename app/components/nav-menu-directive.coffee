'use strict'

# <ul nav-menu="active">
# 	<li><a href="/one">Page One</a></li>
# 	<li><a href="/two">Page Two</a></li>
# 	<li><a href="/three">Page Three</a></li>
# </ul>

angular
  .module('reproquoApp.nav-menu-directive', [])
  .directive 'navMenu', ($rootScope, $location) ->
    link = (scope, element, attrs) ->
      href = element.find('a').attr 'href'
      element.removeClass 'active'
      element.addClass 'active' if href == "##{$location.path()}"

      $rootScope.$on '$locationChangeSuccess', ->
        element.removeClass 'active'
        element.addClass 'active' if href == "##{$location.path()}"

        return {
          restrict: 'A'
          link: link
        }
