Emberjs.EventsIndexRoute = Ember.Route.extend
  model: () ->
    Emberjs.Event.find()

Emberjs.EventsNewRoute = Ember.Route.extend
  model: () ->
    Emberjs.Event.createRecord(status: 'actived')

Emberjs.EventDestroyRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.destroyRecord();
