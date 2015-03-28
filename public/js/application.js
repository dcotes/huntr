$(document).ready(function() {
  $('#hunt_sb1 , #hunt_sb2').hide();
  $('#hide_form').click(function(){ 


    var provided_hunt_name = hunt_info.elements["hunt_name"].value;
    var provided_hunt_starting_location = hunt_info.elements["hunt_location"].value;
    var provided_hunt_difficulty = hunt_info.elements["hunt_difficulty"].value;

    $("#insert_name").text(provided_hunt_name);
    $("#insert_difficulty").text(provided_hunt_difficulty);
    $("#insert_location").text(provided_hunt_starting_location);


    // new_hunt.elements["name"].value= provided_hunt_name;
    // new_hunt.elements["name"].value= provided_hunt_starting_location;
    // new_hunt.elements["name"].value= provided_hunt_difficulty;
    // alert(new_hunt.elements["name"].value, );
    

    // <input type="hidden" name="name" value="dummy_name">

    $('#myTabContentOverlay').fadeOut(350);
    $('#content_mover').animate({"left": '+=15%'});
    $('#hunt_sb1, #hunt_sb2').fadeIn(700);

  });
});


