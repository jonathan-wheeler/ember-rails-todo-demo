Emberjs.EventTextField = Ember.TextField.extend(
  attributeBindings: ['isEditing']

  focusOut: (evt) ->
    this.set('isEditing', false)

  focusIn: (evt) ->
    this.set('isEditing', true)
)