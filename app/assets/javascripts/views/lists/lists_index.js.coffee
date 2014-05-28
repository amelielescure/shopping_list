class ShoppingList.Views.ListsIndex extends Backbone.View

  template: JST['lists/index']

  initialize: ->
    @collection.on "all", @render, this

  render: ->
    @$el.html(@template(lists: @collection.models))
    @

