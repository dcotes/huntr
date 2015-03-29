
                              var poly;
                              var map;
                              var coords = [];
                              var image = '/img/map__pin_icon.png'

                              function initialise(location)
                              {
                                console.log(location);

                                var currentLocation = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);

                                var mapOptions = {
                                  //center map on users geolocation (from browser)
                                  center: currentLocation,
                                  zoom: 12,
                                  mapTypeId: google.maps.MapTypeId.ROADMAP
                                };


                                  map = new google.maps.Map(document.getElementById("map-canvas"),
                                    mapOptions);

                                  var polyOptions = {
                                    strokeColor: '#339966',
                                    strokeOpacity: 0.5,
                                    strokeWeight: 2
                                  };

                                  poly = new google.maps.Polyline(polyOptions);
                                  poly.setMap(map);


                                  //add a listener for the click event

                                  google.maps.event.addListener(map, 'click', addLatLng);

                                }


                                  function addLatLng(event) {
                                    console.log('marker placed at');
                                    console.log(event.latLng);
                                    window.latLng = event.latLng;
                                  //console.log(poly);
                                  var path = poly.getPath();
                                  // Because path is an MVCArray, we can simply append a new coordinate
                                  // and it will automatically appear.
                                  path.push(event.latLng);

                                  var coordinate = {
                                    lat: event.latLng.k,
                                    lng: event.latLng.D
                                  };
                                  coords.push(coordinate);
                                  console.log(coords[0].lat);
                                  console.log(coords[0].lng);

                                  // var lng = coords[0].lng;


                                  // var input_loc = document.createElement("input_loc");

                                  // input_loc.setAttribute("type", "hidden");

                                  // input_loc.setAttribute("name", "lng");

                                  // input_loc.setAttribute("value", lng);

                                  // console.log(input_loc);

                                  //append to form element that you want .
                                  document.getElementById("chells").appendChild(input);


                                  // Add a new marker at the new plotted point on the polyline.
                                  //console.log(marker);
                                  // console.log(event.LatLng);
                                  var marker = new google.maps.Marker({
                                    position: event.latLng,
                                    title: '#' + path.getLength(),
                                    map: map,
                                    icon: image
                                    });
                                  }











                                    $(document).ready(function()
                                    {
                                      navigator.geolocation.getCurrentPosition(initialise);
                                    });