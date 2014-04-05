(function(){

  var homeLatLng, map;
  var geocoder = new L.esri.Services.Geocoding();

  function init () {
    $('.btn-elections').click(search);
    $('#myTab a').click(function (e) {
      e.preventDefault();
      $(this).tab('show');
    })
  }

  function search (event) {
    event.preventDefault();

    $('.election-rows').slideDown();

    var val = $('#query').val();

    geocoder.geocode(val, {}, function(response) {
      mapLocation(response.locations[0].feature);
    });
  }

  function mapLocation (feature) {
    if (map) {
      map.remove();
    }

    homeLatLng = new L.LatLng(feature.geometry.y, feature.geometry.x);

    map = L.map('map').setView(homeLatLng, 12);
    L.esri.basemapLayer("Streets").addTo(map);
    L.marker(homeLatLng).addTo(map);

    // // add a marker in the given location, attach some popup content to it and open the popup
    // L.marker([51.5, -0.09]).addTo(map)
    //     .bindPopup('A pretty CSS3 popup. <br> Easily customizable.')
    //     .openPopup();
  }

  $(init);

})();
