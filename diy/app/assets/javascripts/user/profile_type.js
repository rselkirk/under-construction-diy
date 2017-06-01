$(document).ready(function onReady() {

  $( "#created-projects-button" ).click(function() {
    $(this).addClass("tab-selected");
    $("#saved-projects-button").removeClass("tab-selected");
    $("#completed-projects-button").removeClass("tab-selected");
    $( "#saved_projects" ).hide()
    $( "#completed_projects" ).hide()
    $( "#created_projects" ).fadeIn(400)
  });

  $( "#completed-projects-button" ).click(function() {
    $(this).addClass("tab-selected");
    $("#created-projects-button").removeClass("tab-selected");
    $("#saved-projects-button").removeClass("tab-selected");
    $( "#saved_projects" ).hide()
    $( "#created_projects" ).hide()
    $( "#completed_projects" ).fadeIn(400)
  });

  $( "#saved-projects-button" ).click(function() {
    $(this).addClass("tab-selected");
    $("#completed-projects-button").removeClass("tab-selected");
    $("#created-projects-button").removeClass("tab-selected");
    $( "#completed_projects" ).hide()
    $( "#created_projects" ).hide()
    $( "#saved_projects" ).fadeIn(400);
  });

});

