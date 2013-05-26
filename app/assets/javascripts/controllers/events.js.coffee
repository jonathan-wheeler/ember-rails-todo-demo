Emberjs.EventsController = Ember.ArrayController.extend(
  remaining: (() ->
    this.get('content').filterProperty('isFinished', false).get('length')).property('content.@each.isFinished')

  hasRemaining: (() ->
    this.get('remaining') > 0).property('remaining')

  destroyEvent: (event) ->
    event.deleteRecord()
    event.get('store').commit()

  addEvent: () ->
    this.get('content').push(Emberjs.Event.createRecord(status: 'actived'))
)