# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

index =
  # Default settings
  # Override defaults
  # index.defaults.message = 'Hello'
  # index.init({'message': 'Hello'})
  defaults: {}

  # Primary initialization function
  init: (options) ->
    @settings = $.extend(true, {}, @defaults, options);

window.index = index

$ ->
  index.init()
