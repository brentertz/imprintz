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

    # bind scrollTo for top nav links
    $("#header nav.main a").bind 'click', (event) =>
      @scrollTo(event.currentTarget.hash)

    @flash()

  # Show flash notifications
  flash: ->
    if (@$flash.html().length > 0)
      slideup = -> $('#flash').slideUp(-> $(@).empty())
      @$flash.click(slideup).slideDown()
      setTimeout(slideup, 10000)

  # Scroll to target element (#id) position
  scrollTo: (target) ->
    target ||= 'html'
    $("html").animate({"scrollTop": $(target).position().top}, 'slow')

window.common = common

$ ->
  common.init()
