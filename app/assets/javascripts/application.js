// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require ckeditor/init
//= require_tree .




$( document ).on('turbolinks:load', function() {


	$('.icon').on('click', function() {
    $(this).toggleClass('open');
    $('#mobilemenu').slideToggle('slow');
    //$('#mobilemenu').toggleClass('lukket');
    //$('#mobilemenu').toggleClass('apen');
});


	$('#nav-icon2').click(function(){
		$(this).toggleClass('open');
		$('#mobilemenu').toggle('slow');
	});
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

});

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

function initMap(){
  if($('#map').length){
    setMap();
  }

}

function setMap() {
  var grevent = {lat: 59.914539531265376, lng: 10.749528244163002}
  


  var myOptions = {
    zoom: 17,
    center: grevent,
    disableDefaultUI: true, // a way to quickly hide all controls
    mapTypeControl: false,
    scaleControl: false,
    zoomControl: false,
    scrollwheel:  false,

    };

    var styledMapType = new google.maps.StyledMapType(
[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
],
  {name: 'Styled Map'});
    
  var logo = $('#map').attr('image');
  map = new google.maps.Map(document.getElementById('map'), myOptions);
  var marker = new google.maps.Marker({
  position: grevent,
  map: map,
  icon: logo,
  title: 'Internasjonalen'
  });

  map.mapTypes.set('styled_map', styledMapType);
        map.setMapTypeId('styled_map');

}
