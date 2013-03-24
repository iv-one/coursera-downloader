class Plan
    constructor: (data) ->
        @enabled     = $(data).attr 'enabled'
        @shortKey    = $(data).attr 'shortKey'
        @shortName   = $(data).attr 'shortName'
        @name        = $(data).attr 'name'
        @key         = $(data).attr 'key'
        @projectName = ''

    projectKey: () ->
        @key.split("-")[0]