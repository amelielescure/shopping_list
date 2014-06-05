class ShoppingList.Views.ListsIndex extends Backbone.View

  template: JST['lists/index']

  events:
    "click .destroy-list": "deleteList"

  initialize: (option) ->
    @collection.on "all", @render, this
    @render()

  render: ->
    @$el.html(@template(lists: @collection.models))
    @

  deleteList: (e) ->
    e.preventDefault()
    listId = $(e.target).data("list-id")
    @list = @collection.get listId
    @list.destroy success: (model, response) ->
      alert "List #{model.get('name')} deleted!"

