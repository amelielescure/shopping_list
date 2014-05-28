class ShoppingList.Views.ListsEdit extends Backbone.View

  template: JST["backbone/templates/lists/edit"]

  el: '#lists'

  events:
    "submit #edit-list" : "update"

  initialize: ->
    @render()

  render: ->
    @$el.html @template(@model.toJSON())
    @

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    name = $('#name').val()
    @model.save({name: name},
      success: (post) =>
          @model = post
          window.location.hash = "/#/lists/{@model.id}")