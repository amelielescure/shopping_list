class ShoppingList.Views.ListsShow extends Backbone.View
  template: JST['lists/show']

  initialize: (options) ->
    @list = @model
    @products = options.products
    @product_lists = options.product_lists

  render: ->
    products = new Array
    for product_list in @product_lists.models
      if product_list.get("list_id") ==  @list.id
        for product in @products.models
          if product.id ==  product_list.get("product_id")
            products.push({name:product.get("name"), picture:product.get("picture"), price:product.get("price"), quantity: product_list.get("quantity")}) 
        
    @$el.html(@template(list: @model, products: products))
    @