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

    # Save DOM references
    @$gallery_images = $("#gallery img.photo")

    # Initialize gallery image behaviors
    margin_left = parseInt(@$gallery_images.parent().css('marginLeft'), 10)
    margin_top = parseInt(@$gallery_images.parent().css('marginTop'), 10)

    @$gallery_images.each((index) ->
      position = $(@).parent().position()
      $(@).css({
        "position": "absolute",
        "left": position.left + margin_left,
        "top": position.top + margin_left
      })
    )

    @$gallery_images.bind 'click', ->
      is_photo = $(@).hasClass('photo')

      $large_photo = $('.large_photo')
      if ($large_photo.length)
        position = $large_photo.parent().position()
        $large_photo.toggleClass('large_photo photo').css({
          "left": position.left + margin_left,
          "top": position.top + margin_left
        })

      $(@).toggleClass('photo large_photo').css({"left":200, "top":0}) if (is_photo)

window.index = index

$ ->
  index.init()
