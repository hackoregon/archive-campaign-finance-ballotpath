(function(){

  var homeLatLng, map;
  var geocoder = new L.esri.Services.Geocoding();

  function init () {
    $('.address-search').submit(search);
    $('#myTab a').click(function (e) {
      e.preventDefault();
      $(this).tab('show');
    });
  }

  function search (event) {
    event.preventDefault();

    $('.election-rows').slideDown();
    $('.intro-text').slideUp();

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

    map = L.map('map', {
      scrollWheelZoom: false
    }).setView(homeLatLng, 12);
    L.esri.basemapLayer("Streets").addTo(map);
    L.marker(homeLatLng).addTo(map);
  }

  $(init);

})();
