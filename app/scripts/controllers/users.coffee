'use strict'

angular.module('app')
  .controller 'UsersCtrl', ($scope, UserService) ->
    $scope.users = UserService.query()
    # $scope.users = [
    #   {firstName: 'john contreras'}
    #   {firstName: 'greg williams'}
    #   {firstName: 'omar alvarez'}
    # ]
