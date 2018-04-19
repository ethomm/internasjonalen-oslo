
var ready;
var map;


ready = function (){
  console.log('All systems running...');

  lightbox.option({
      'resizeDuration': 200,
      'wrapAround': true
    })

  if($('#map').length){
    setMap();
  }
  $('.icon').on('click', function() {
    $(this).toggleClass('open');
    $('#mobilemenu').slideToggle('slow');
    //$('#mobilemenu').toggleClass('lukket');
    //$('#mobilemenu').toggleClass('apen');
  });

$('#newFrontpageImage').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

  /*$('#nav-icon2').click(function(){
    $(this).toggleClass('open');
    $('#mobilemenu').toggle('slow');
  });*/
  // checks if any inputs has the class apeningstider
  if($('input').hasClass('apningstider')){
    setDoubleInteger();
  }

  // Makes shure to not bloat the input field with class apningstider
  $('.apningstider').on('focusout', function(){
    if(this.value == 0){
        this.value = "00";
      }else if(this.value > 0 && this.value < 10){
        var value = this.value.toString();
        var newvalue = "0" + value;
        //console.log(newvalue.length)
        if(newvalue.length == 2){
          this.value = "0"+value;
        }
        
      }
    
  });

  $('#seodescription').on('change keyup paste', function(){
      seodescription();    
  });

  if($('textarea').is('#seodescription')){
    seodescription();
  }

  // Initializing the timers
  if($('div').is('#apningstider')){
    if($('#mondayopen').prop('checked') == false){
      $('.mondaytime').toggle();
    }
    if($('#tuesdayopen').prop('checked') == false){
      $('.tuesdaytime').toggle();
    }
    if($('#wednesdayopen').prop('checked') == false){
      $('.wednesdaytime').toggle();
    }
    if($('#thursdayopen').prop('checked') == false){
      $('.thursdaytime').toggle();
    }
    if($('#fridayopen').prop('checked') == false){
      $('.fridaytime').toggle();
    }
    if($('#saturdayopen').prop('checked') == false){
      $('.saturdaytime').toggle();
    }
    if($('#sundayopen').prop('checked') == false){
      $('.sundaytime').toggle();
    }
  }

  $('#mondayopen').on('change', function(){
    $('.mondaytime').toggle();
  });

  $('#tuesdayopen').on('change', function(){
    $('.tuesdaytime').toggle();
  });

  $('#wednesdayopen').on('change', function(){
    $('.wednesdaytime').toggle();
  });

  $('#thursdayopen').on('change', function(){
    $('.thursdaytime').toggle();
  });

  $('#fridayopen').on('change', function(){
    $('.fridaytime').toggle();
  });

  $('#saturdayopen').on('change', function(){
    $('.saturdaytime').toggle();
  });

  $('#sundayopen').on('change', function(){
    $('.sundaytime').toggle();
  });

}

//$( document ).on('turbolinks:load', ready());

// Function to check seodescriptions

function seodescription(){
  number = $('#seodescription').val().length;
  left = 160 - number
  $('#seodescriptioncount').html(left);
  if(number > 160){
    $('#seodescriptionfeedback').removeClass('text-muted');
    if($('#seodescriptionfeedback').hasClass('text-danger') == false){
        $('#seodescriptionfeedback').addClass('text-danger');
    }
  }else if($('#seodescriptionfeedback').hasClass('text-danger')){
    $('#seodescriptionfeedback').removeClass('text-danger');
    $('#seodescriptionfeedback').addClass('text-muted');
  }
}

// Function to correct the inputfields of apningstider to double digets
function setDoubleInteger(){
  $(".apningstider").each(function() {
      if(this.value == 0){
        this.value = "00";
      }else if(this.value > 0 && this.value < 10){
        var value = this.value.toString();
        this.value = "0"+value;
      }
  });
}



$(window).bind('turbolinks:load', ready)

