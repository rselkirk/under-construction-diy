$(document).ready(function onReady() {
   
  $( "#created_projects" ).hide()
  $( "#completed_projects" ).hide()

  $( "#created_projects_button" ).click(function() {
    $( "#saved_projects" ).hide()
    $( "#completed_projects" ).hide()
    $( "#created_projects" ).fadeIn(400)
  });

  $( "#completed_projects_button" ).click(function() {
    $( "#saved_projects" ).hide()
    $( "#created_projects" ).hide()
    $( "#completed_projects" ).fadeIn(400)
  });

  $( "#saved_projects_button" ).click(function() {
    $( "#completed_projects" ).hide()
    $( "#created_projects" ).hide()
    $( "#saved_projects" ).fadeIn(400);
  });

});

