Emberjs.EventsRoute = Ember.Route.extend
  model: () ->
    Emberjs.Event.find()