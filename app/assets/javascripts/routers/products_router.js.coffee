class ShoppingList.Routers.Products extends Backbone.Router

  routes:
    "" : "index"
    "products"       : "index"

  initialize: (options) ->
    @products = new ShoppingList.Collections.Products()
    @lists = new ShoppingList.Collections.Lists()
    @product_lists = new ShoppingList.Collections.ProductLists()

  index: ->
    self = @
    @lists.fetch 
      success: (lists, response) ->
        self.product_lists.fetch
          success: (product_lists, response) ->
            self.products.fetch
              success: (products, response) ->
                self.productsIndexView = new ShoppingList.Views.ProductsIndex
                  el: $(".content"),
                  collection: products,
                  products: products,
                  lists: lists
                  product_lists: product_lists
