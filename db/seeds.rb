Note.destroy_all

Note.create([
  {
    title: 'a simple note',
    body: StickyNote.new(content: "Don't gorget to make a list")
  },
  {
    title: 'A more complex todo list',
    body: TodoList.new(
      todo_items: [
        TodoItem.new(title: 'make a second todo item', complete: true),
        TodoItem.new(title: 'Make another todo list', complete: false),
        TodoItem.new(title: 'DSICO PARTY!', complete: false)
      ]
    )
  }
])
