class ShoppingList.Routers.Products extends Backbone.Router

  routes:
    "" : "index"
    "products"       : "index"

  initialize: (options) ->
    @products = new ShoppingList.Collections.Products()
    @lists = new ShoppingList.Collections.Lists()
    @product_list = new ShoppingList.Collections.ProductLists()
    @products.fetch()
    @lists.fetch()
    @product_list.fetch()

  index: ->
    @productsIndexView = new ShoppingList.Views.ProductsIndex
      el: $(".content"),
      collection: @products,
      products: @products,
      lists: @lists
      product_lists: @product_list

    @productsIndexView.render()
