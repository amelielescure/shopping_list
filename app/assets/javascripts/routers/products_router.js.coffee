class ShoppingList.Routers.Products extends Backbone.Router

  routes:
    "" : "index"
    "products"       : "index"

  initialize: (options) ->
    @products = new ShoppingList.Collections.Products()
    @products.fetch()

  index: ->
    @productsIndexView = new ShoppingList.Views.ProductsIndex
      el: $(".content"),
      collection: @products,
      router: @

    @productsIndexView.render()
