class ShoppingList.Routers.Lists extends Backbone.Router

  routes:
    "lists"         : "index"
    "lists/new"         : "newList"
    "lists/:id"         : "show"
    "lists/:id/edit"    : "edit"

  initialize: (options) ->
    @lists = new ShoppingList.Collections.Lists()
    @product_list = new ShoppingList.Collections.ProductLists()
    @lists.fetch()
    @product_list.fetch()

  index: ->
    @listsIndexView = new ShoppingList.Views.ListsIndex
      el: $(".content"),
      collection: @lists,
      product_list: @product_list,
      router: @

    @listsIndexView.render()

  newList: ->
    @listsNewView = new ShoppingList.Views.ListsNew
      el: $(".content"),
      collection: @lists,
      router: @

    @listsNewView.render()

  show: (id) ->
    list = @lists.get(id)
    @listsShowView = new ShoppingList.Views.ListsShow
      el: $(".content"),
      model: list,
      router: @

    @listsShowView.render()

  edit: (id) ->
    list = @lists.get(id)
    @listsEditView = new ShoppingList.Views.ListsEdit
      el: $(".content"),
      model: list,
      router: @

    @listsEditView.render()
