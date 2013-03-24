class ClassesService
    constructor: (@store) ->

angular.module('ClassesService', ['Store']).factory('classesService', (store) ->
    new ClassesService(store)
)
