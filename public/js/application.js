$(document).ready(function() {
   navigator.geolocation.getCurrentPosition(initialise);
  $('#hunt_sb1 , #hunt_sb2').hide();
  $('#hide_form').click(function(){ 


    var provided_hunt_name = hunt_info.elements["hunt_name"].value;
    var provided_hunt_starting_location = hunt_info.elements["hunt_location"].value;
    var provided_hunt_difficulty = hunt_info.elements["hunt_difficulty"].value;

    $("#insert_name").text(provided_hunt_name);
    $("#insert_difficulty").text(provided_hunt_difficulty);
    $("#insert_location").text(provided_hunt_starting_location);


    new_hunt.elements["name"].value= provided_hunt_name;
    new_hunt.elements["starting_location"].value= provided_hunt_starting_location;
    new_hunt.elements["difficulty"].value= provided_hunt_difficulty;
    // alert(new_hunt.elements["name"].value);
    

    $('#myTabContentOverlay').fadeOut(350);
    $('#content_mover').animate({"left": '+=15%'});
    $('#hunt_sb1, #hunt_sb2').fadeIn(700);




  });
  var counter = 0;
  $('add_hints_to_hunt').click(function(){ 
    counter++;

    name_hint_1 = "hint_1_"+counter
    name_hint_2 = "hint_2_"+counter
    name_hint_3 = "hint_3_"+counter

    var provided_hint_1 = new_hint.elements["hint_1"].value;
    var provided_hint_2 = new_hint.elements["hint_2"].value;
    var provided_hint_3 = new_hint.elements["hint_3"].value;

    // $("#insert_name").text(provided_hint_1);
    // $("#insert_difficulty").text(provided_hint_2);
    // $("#insert_location").text(provided_hint_3);
    // alert(new_hunt.elements["name"].value);

        var input_hint_1 = document.createElement("input");

        input_hint_1.setAttribute("type", "hidden");

        input_hint_1.setAttribute("form", "new_hunt");

        input_hint_1.setAttribute("name", name_hint_1);

        input_hint_1.setAttribute("value",provided_hint_1 );

        var input_hint_2 = document.createElement("input");

        input_hint_2.setAttribute("type", "hidden");

        input_hint_2.setAttribute("form", "new_hunt");

        input_hint_2.setAttribute("name", name_hint_2);

        input_hint_2.setAttribute("value",provided_hint_2 );

        var input_hint_3 = document.createElement("input");

        input_hint_3.setAttribute("type", "hidden");

        input_hint_3.setAttribute("form", "new_hunt");

        input_hint_3.setAttribute("name", name_hint_3);

        input_hint_3.setAttribute("value",provided_hint_3 );

        console.log(provided_hint_1)
        console.log(provided_hint_2)
        console.log(provided_hint_3)

  });
    $('#add_hints_to_hunt').click(function(){ 
    $('#modal-hint').modal('toggle');

  });

    $('#map-canvas').click(function(){ 
    $('#modal-hint').modal('toggle');

  });






  var poly;
  var map;
  var coords = [];
  var image = '/img/map_pin_icon.png'

  function initialise(location)
  {
    console.log(location);

    var currentLocation = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);

    var mapOptions = {
      //center map on users geolocation (from browser)
      center: currentLocation,
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP };


      map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);

      var polyOptions = {
        strokeColor: '#339966',
        strokeOpacity: 0.5,
        strokeWeight: 2};

        poly = new google.maps.Polyline(polyOptions);
        poly.setMap(map);


      //add a listener for the click event
      google.maps.event.addListener(map, 'click', addLatLng);

  }

  i=0;
  function addLatLng(event) {
        // console.log('marker placed at');
        // console.log(event.latLng);
        window.latLng = event.latLng;
        i++;
        //console.log(poly);
        var path = poly.getPath();
        // Because path is an MVCArray, we can simply append a new coordinate
        // and it will automatically appear.
        path.push(event.latLng);

        var coordinate = { lat: event.latLng.k, lng: event.latLng.D };
        coords.push(coordinate);
        // console.log(coords[0].lat);
        // console.log(coords[0].lng);


        // console.log (coordinate)

        console.log(i)
        var  name_lat = 'location_lat'+i;
        var  name_lng = 'location_lng'+i;

        var input_lat = document.createElement("input");

        input_lat.setAttribute("type", "hidden");

        input_lat.setAttribute("form", "new_hunt");

        input_lat.setAttribute("name", name_lat);

        input_lat.setAttribute("value", coordinate.lat);

        var input_lon = document.createElement("input");

        input_lon.setAttribute("type", "hidden");

        input_lon.setAttribute("form", "new_hunt");

        input_lon.setAttribute("name", name_lng);

        input_lon.setAttribute("value", coordinate.lng);


        document.getElementById("new_hunt").appendChild(input_lon);
        document.getElementById("new_hunt").appendChild(input_lat);
        var marker = new google.maps.Marker({
          position: event.latLng,
          title: '#' + path.getLength(),
          map: map,
          icon: image
      });
    }



});