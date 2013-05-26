Emberjs.EventsView = Ember.View.extend
  templateName: 'events'

Emberjs.EventTrView = Ember.View.extend
  templateName: 'events/event_tr'
  tagName: 'tr'
  isEditing: false

  isUnfinished: (() ->
    !this.get('content').get('isFinished')).property('content.isFinished')

  classNameBindings: 'content.isFinished:finished'

  saveEvent: (() ->
    m = this.get('content')
    if m.isFinished
      m.set('status', 'finished')
    else
      m.set('status', 'actived')

    if !this.get('isEditing')
      m.get('store').commit()).observes('content.isFinished', 'isEditing')
