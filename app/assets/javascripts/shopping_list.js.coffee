window.ShoppingList =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new ShoppingList.Routers.Lists()
    new ShoppingList.Routers.Products()
    Backbone.history.start()

$(document).ready ->
  ShoppingList.initialize()
