common =
  # Default settings
  # eg) Override defaults
  #   common.defaults.message = 'Hello'
  #   common.init({'message': 'Hello'})
  defaults: {}

  # Primary initialization function
  init: (options) ->
    @settings = $.extend(true, {}, @defaults, options);

    # Save DOM references
    @$flash = $("#flash")

    @flash()

  # Show flash notifications
  flash: ->
    if (@$flash.html().length > 0)
      slideup = -> $('#flash').slideUp(-> $(@).empty())
      @$flash.click(slideup).slideDown()
      setTimeout(slideup, 10000)

window.common = common

$ ->
  common.init()
