Emberjs.Router.map (match)->
  # match('/').to('index')
  this.resource('events', ->
    this.route('new')
    this.resource('event', {path: ':event_id'}, ->
      this.route('edit')
      this.route('destroy')
    )
  )
