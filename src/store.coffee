class Store

  incomingTasks: () ->
    json = window.localStorage.tasks
    window.JSON.parse(json) if json

  addIncomingTasks: (value) ->
    @clearIncoming()
    json = window.JSON.stringify(value)
    window.localStorage.tasks = json

  clearIncoming: ->
    window.localStorage.removeItem('tasks')

angular.module('Store', []).factory('store', ($window) ->
  new Store
)