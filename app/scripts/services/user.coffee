'use strict';

angular.module('app')
  .service 'UserService', ($scope, $resource) ->
    return $resource('http://localhost\\3000/users/:id')
