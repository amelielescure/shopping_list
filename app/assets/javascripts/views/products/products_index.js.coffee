class ShoppingList.Views.ProductsIndex extends Backbone.View

  template: JST['products/index']

  initialize: (options) ->
    @lists = options.lists
    @products = options.products
    @collection.on "all", @render, this

  render: ->
    @$el.html(@template(products: @collection.models, lists: @lists.models))
    @
