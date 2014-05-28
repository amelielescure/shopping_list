class ShoppingList.Views.ProductsIndex extends Backbone.View

  template: JST['products/index']

  initialize: ->
    @collection.on "all", @render, this

  render: ->
    @$el.html(@template(products: @collection.models))
    @
