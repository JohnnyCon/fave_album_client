'use strict';

angular.module('app')
.service 'UserService', ($resource) ->
  User = $resource('http://localhost\\:3000/users/:id', {}, {update: {method: 'PUT'}})

  @list = ->
    User.query()

  @get = (id) ->
    User.get({id})

  @save = (user) ->
    User.update({id:user.id},{user})

  @create = (user) ->
    User.save({user})

