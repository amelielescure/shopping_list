class ShoppingList.Views.ListsNew extends Backbone.View

  template: JST["lists/new"]

  events:
    "submit #new-list": "save"

  initialize: ->
    @render()

  render: ->
    @$el.html(@template())
    @

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    attributes =
      name: @$('#name').val()
    @collection.create attributes,
      success: (post) =>
        Backbone.history.navigate('#lists', true)
      error: ->
        alert "There were errors!"
