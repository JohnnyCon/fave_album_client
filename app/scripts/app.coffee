'use strict'

angular.module('app', ['ngResource'])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/users',
        templateUrl: 'views/users.html'
        controller: 'UsersCtrl'
      .otherwise
        redirectTo: '/'
