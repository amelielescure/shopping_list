class ShoppingList.Views.ListsShow extends Backbone.View
  template: JST['lists/show']

  initialize: ->
    @collection.on "all", @render, this

  render: ->
    @$el.html(@template(list: @collection.models))
    @