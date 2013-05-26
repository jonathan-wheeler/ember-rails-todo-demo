Emberjs.EventsNewController = Ember.ObjectController.extend(

  save: () ->
    this.get('store').commit()

  cancel: () ->
    this.transitionToRoute('events')

  transitionAfterSave: (() ->
    if this.get('content.id')
      this.transitionToRoute('events')).observes('content.id')

)

Emberjs.NeedEventController = Ember.ObjectController.extend(
  needs: 'event'
)

Emberjs.EventIndexController = Emberjs.NeedEventController.extend()

Emberjs.EventEditController = Emberjs.NeedEventController.extend(
  save: () ->
    this.get('store').commit()

    if this.get('controllers.event').get('content').get('isLoaded')
      this.transitionToRoute('events')

  cancel: () ->
    this.transitionToRoute('events')

)

Emberjs.EventDestroyController = Emberjs.NeedEventController.extend(
  destroyRecord: () ->
    if window.confirm("Are you sure you want to delete this event?")
      this.get('controllers.event').get('content').deleteRecord()
      this.get('store').commit()
      this.transitionToRoute('events')
)