class ShoppingList.Views.ListsNew extends Backbone.View

  template: JST["lists/new"]

  events:
    "submit #new-list": "save"

  initialize: ->
    @render()

  render: ->
    @$el.html(@template())
    @

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    name = $('#name').val()
    model = new ShoppingList.Models.List({name: name})
    @collection.create model,
      success: (list) =>
        Backbone.history.navigate('#lists', true)
