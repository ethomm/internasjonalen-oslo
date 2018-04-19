function initMap(){
  var grevent = {lat: 59.914539531265376, lng: 10.749528244163002};
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
        {"elementType": "geometry",
          "stylers": [{"color": "#f5f5f5"}]},
        {"elementType": "labels.icon",
          "stylers": [{"visibility": "off"}]},
        {"elementType": "labels.text.fill",
          "stylers": [{"color": "#616161"}]},
        {"elementType": "labels.text.stroke",
          "stylers": [{"color": "#f5f5f5"}]},
        {"featureType": "administrative",
          "elementType": "geometry",
          "stylers": [{"visibility": "off"}]},
        {"featureType": "administrative.land_parcel",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#bdbdbd"}]},
        {"featureType": "poi",
          "stylers": [{"visibility": "off"}]},
        {"featureType": "poi",
          "elementType": "geometry",
          "stylers": [{"color": "#eeeeee"}]},
        {"featureType": "poi",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#757575"}]},
        {"featureType": "poi.park",
          "elementType": "geometry",
          "stylers": [{"color": "#e5e5e5"}]},
        {"featureType": "poi.park",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#9e9e9e"}]},
        {"featureType": "road",
          "elementType": "geometry",
          "stylers": [{"color": "#ffffff"}]},
        {"featureType": "road",
          "elementType": "labels.icon",
          "stylers": [{"visibility": "off"}]},
        {"featureType": "road.arterial",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#757575"}]},
        {"featureType": "road.highway",
          "elementType": "geometry",
          "stylers": [{"color": "#dadada"}]},
        {"featureType": "road.highway",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#616161"}]},
        {"featureType": "road.local",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#9e9e9e"}]},
        {"featureType": "transit",
          "stylers": [{"visibility": "off"}]},
        { "featureType": "transit.line",
          "elementType": "geometry",
          "stylers": [{"color": "#e5e5e5"}]},
        { "featureType": "transit.station",
          "elementType": "geometry",
          "stylers": [{"color": "#eeeeee"}]},
        { "featureType": "water",
          "elementType": "geometry",
          "stylers": [{"color": "#c9c9c9"}]},
        { "featureType": "water",
          "elementType": "labels.text.fill",
          "stylers": [{"color": "#9e9e9e"}]}
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

  marker.addListener('click', function() {
    var url = 'https://www.google.com/maps/place/Internasjonalen/@59.9141892,10.7487952,419m/data=!3m1!1e3!4m13!1m7!3m6!1s0x0:0x0!2zNDXCsDI3JzUxLjAiTiA5wrAxMScyOS4wIkU!3b1!8m2!3d45.464167!4d9.191389!3m4!1s0x0:0x2f311a016cc4580a!8m2!3d59.9145319!4d10.7495843?hl=no';
    window.open(url, "_blank")
    });
}
;
