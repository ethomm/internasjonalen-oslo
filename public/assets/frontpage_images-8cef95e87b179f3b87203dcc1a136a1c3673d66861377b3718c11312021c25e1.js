(function() {
  var anim_loop, bilder, carusell, image, images, index, intervall, ready, startKarusell;

  ready = void 0;

  images = [];

  intervall = 20000;

  index = 0;

  bilder = 0;

  carusell = true;

  ready = function() {
    if ($(window).width() > 800) {
      return $.get('frontpage_images.json/', function(data, status) {
        console.log('started');
        if (status === 'success') {
          return startKarusell(data);
        }
      });
    }
  };

  image = function(i, bilde) {
    return images.push(bilde.image_url.url);
  };

  anim_loop = function() {
    $('#section-main').css('background-image', 'url(' + images[index] + ')');
    if (index !== bilder) {
      index += 1;
      return setTimeout(anim_loop, intervall);
    } else {
      index = 0;
      return setTimeout(anim_loop, intervall);
    }
  };

  startKarusell = function(data) {
    var bilde, i, j, len;
    for (i = j = 0, len = data.length; j < len; i = ++j) {
      bilde = data[i];
      image(i + 1, bilde);
    }
    bilder = images.length - 1;
    return setTimeout(anim_loop, intervall);
  };

  $(document).on('turbolinks:load', ready);

}).call(this);
