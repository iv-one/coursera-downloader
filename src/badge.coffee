dependencies = ['Store', 'ClassesService']

angular.module('badge', dependencies).run((store, classesService) ->
    window.badge = new BadgeController(store, classesService)
)
