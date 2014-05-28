class ShoppingList.Routers.Products extends Backbone.Router

  routes:
    "" : "index"
    "products"       : "index"

  initialize: (options) ->
    @products = new ShoppingList.Collections.Products()
    @lists = new ShoppingList.Collections.Lists()
    @products.fetch()
    @lists.fetch()

  index: ->
    @productsIndexView = new ShoppingList.Views.ProductsIndex
      el: $(".content"),
      collection: @products,
      products: @products,
      lists: @lists

    @productsIndexView.render()
