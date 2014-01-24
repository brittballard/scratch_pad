window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = new @Collections.Notes(@notesJson)
    view = new @Views.Notes(collection: App.AllNotes)
    $('#container').html(view.render().el)
    Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
