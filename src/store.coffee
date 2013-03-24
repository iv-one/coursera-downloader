class Store

    getUrl: () ->
        window.localStorage.url

    setUrl: (value) ->
        window.localStorage.url = value

angular.module('Store', []).factory('store', ($window) ->
    new Store
)