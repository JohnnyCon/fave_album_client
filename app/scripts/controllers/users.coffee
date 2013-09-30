'use strict'

angular.module('app')
.controller 'UsersCtrl', ($scope, UserService) ->
  $scope.users = UserService.list()

  $scope.new = ->
    $scope.editMode = true
    $scope.user = {}

  $scope.save = ->
    $scope.editMode = false
    if $scope.user.id?
      UserService.save($scope.user)
    else
      UserService.create($scope.user)

  $scope.edit = (id) ->
    $scope.editMode = true
    user = {}
    angular.forEach $scope.users, (value, key) ->
      user = value if value.id is id  

    $scope.user = user
