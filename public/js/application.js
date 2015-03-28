$(document).ready(function() {
  $('#hunt_sb1 , #hunt_sb2').hide();
  $('#hide_form').click(function(){   
    $('#myTabContentOverlay').fadeOut(350);
    $('#content_mover').animate({"left": '+=15%'});
    $('#hunt_sb1, #hunt_sb2').fadeIn(700);
  });
});


