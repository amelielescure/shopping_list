class ShoppingList.Views.ProductsIndex extends Backbone.View

  template: JST['products/index']

  events:
    "click #add-product": "addProductList"

  initialize: (options) ->
    @lists = options.lists
    @products = options.products
    @product_lists = options.product_lists
    @collection.on "all", @render, this

  render: ->
    @$el.html(@template(products: @collection.models, lists: @lists.models))
    @

  addProductList: (e) ->
    e.preventDefault()
    listId = $(e.target).parent().children("#select-list").children("option:selected").val()
    productId = $(e.target).data("product-id")
    #exist = @product_lists.get listId
    #console.log exist
    model = new ShoppingList.Models.ProductList({product_id: productId, list_id: listId, quantity: 1})
    @product_lists.create model,
      success: (productlist) =>
        alert("produit add")


