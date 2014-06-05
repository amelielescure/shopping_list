class ShoppingList.Routers.Lists extends Backbone.Router

  routes:
    "lists"         : "index"
    "lists/new"         : "newList"
    "lists/:id"         : "show"
    "lists/:id/edit"    : "edit"

  initialize: (options) ->
    @products = new ShoppingList.Collections.Products()
    @lists = new ShoppingList.Collections.Lists()
    @product_lists = new ShoppingList.Collections.ProductLists()
    @lists.fetch()

  index: ->
    self = @
    @lists.fetch 
      success: (lists, response) ->
        self.listsIndexView = new ShoppingList.Views.ListsIndex
          el: $(".content"),
          collection: lists,
          router: self

        self.listsIndexView.render()

  newList: ->
    @listsNewView = new ShoppingList.Views.ListsNew
      el: $(".content"),
      collection: @lists,
      router: @

    @listsNewView.render()

  show: (id) ->
    self = @
    @lists.fetch 
      success: (lists, response) ->
        list = lists.get(id)
        self.product_lists.fetch
          success: (product_lists, response) ->
            self.products.fetch
              success: (products, response) ->
                self.listsShowView = new ShoppingList.Views.ListsShow
                  el: $(".content"),
                  model: list,
                  products: products,
                  product_lists: product_lists,
                  router: self

                self.listsShowView.render()
