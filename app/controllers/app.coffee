class Model extends Backbone.Model
  defaults:
    done: 1

  constructor:->
    super
    @on 'change', -> @save()

class Collection extends Backbone.Collection
  model: Model
  localStorage: new Backbone.LocalStorage("SomeCollection")

# Main App controller
module.exports = class App extends Neck.App

  scope:
    filter: 
      all: -> true
      active: (t)-> !t.get('done')
      completed: (t)-> t.get('done') 
    filterName: 'all'

  constructor: ->
    super

    @scope.todos = new Collection()
    @scope.todos.fetch()

    @watch 'toggleAll', (value)->
      console.log 'watched'
      for todo in @scope.todos.models
        todo.set 'done', value
    , false

  addTodo: ->
    if @scope.newTodo
      todo = @scope.todos.create title: @scope.newTodo
      @scope.newTodo = ''

  clearCompleted: ->
    for todo in @scope.todos.where(done: 1)
      todo.destroy()
    undefined

  doneTodos: ->
    @scope.todos.models.filter((t) -> !t.get('done')).length