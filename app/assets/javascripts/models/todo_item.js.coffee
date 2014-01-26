class App.Models.TodoItem extends Backbone.Model
  validation: ->
    unless @hasTitle()
      return "Must provide a title"

  save: ->
    unless @validation()
      @collection.todoList.save()

  hasTitle: ->
    @has('title') && @get('title').trim() != ""
