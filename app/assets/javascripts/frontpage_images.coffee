# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = undefined
images = []
intervall = 10000
index = 0
bilder = 0
carusell = true

ready =  ->
    if $(window).width() > 800
        $.get('frontpage_images.json/', (data, status) ->
            if data.length > 1
              startKarusell(data) if status == 'success'
            else if data.length == 1
              $('#section-main').css('background-image', 'url('+data[0].image_url.url+')')   
          )

image = ( i, bilde) -> images.push(bilde.image_url.url)

anim_loop = ->
    $('#section-main').fadeTo('slow', 0.1, ->
        $(this).css('background-image', 'url('+images[index]+')');
    ).fadeTo('slow', 1)
    if index != bilder
      index += 1
      setTimeout anim_loop, intervall  
    else
      index = 0;
      setTimeout anim_loop, intervall  
        
startKarusell = (data) ->
    image i + 1,  bilde for bilde, i in data
    bilder = images.length - 1
    setTimeout anim_loop, intervall    

$(document).on 'turbolinks:load', ready