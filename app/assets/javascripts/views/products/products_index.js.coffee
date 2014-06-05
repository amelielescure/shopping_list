class ShoppingList.Views.ProductsIndex extends Backbone.View

  template: JST['products/index']

  events:
    "click #add-product": "addProductList"

  initialize: (options) ->
    @lists = options.lists
    @products = options.products
    @product_lists = options.product_lists
    @collection.on "all", @render, this
    @collection.on 'reset', @render, this
    @render()

  render: ->
    @$el.html(@template(products: @collection.models, lists: @lists.models))
    @

  addProductList: (e) ->
    e.preventDefault()
    exist = false
    listId = $(e.target).parent().children("#select-list").children("option:selected").val()
    productId = $(e.target).data("product-id")
    @product_lists.fetch
      success: (collection, response) ->
        for product in collection.models
          if parseInt(product.get "product_id") == parseInt(productId) && parseInt(product.get "list_id") == parseInt(listId)
            exist = product
            quantity = parseInt(product.get "quantity") + 1
        if exist == false
          model = new ShoppingList.Models.ProductList({product_id: productId, list_id: listId, quantity: 1})
          @product_lists.create model,
            success: (productlist) =>
              console.log("produit ajouté")
        else
          model = new ShoppingList.Models.ProductList({quantity: quantity})
          exist.save model,
            success: (productlist) =>
              console.log ("produit modifié")



