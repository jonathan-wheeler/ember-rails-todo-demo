Emberjs.Event = DS.Model.extend
  title: DS.attr('string')
  status: DS.attr('string')

  isFinished: (() ->
    this.get('status') == 'finished').property('status')
