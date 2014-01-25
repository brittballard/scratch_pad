class App.Models.TodoItem extends Backbone.Model
  initialize: (data, options) ->
    @todoList = options.todoList

  url: => "/todo_lists/#{@todoList.id}/todo_items"

  save: ->
    @collection.todoList.save()
