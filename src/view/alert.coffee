class Alert
    constructor: () ->
        @name = '.alerts'
        @index = 0
        @visible = 0

angular.module('Alert', []).factory('alert', ($window) ->
    new Alert
)
