# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = undefined
images = []
intervall = 1000
index = 0
bilder = 0
carusell = true

ready =  ->
    if $(window).width() > 800
        $.get('frontpage_images.json/', (data, status) ->
            console.log('started');
            startKarusell(data) if status == 'success'   
          )

image = ( i, bilde) -> images.push(bilde.image_url.url)

anim_loop = ->
    $('#section-main').css('background-image', 'url('+images[index]+')';
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