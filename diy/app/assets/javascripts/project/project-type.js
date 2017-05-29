$(document).ready(function onReady() {

  $( "#create_project" ).click(function() {
    $( "#external_link_toggle" ).hide();
    $( "#create_project_toggle" ).fadeIn( 400, function() {
      $("#project_title ").focus();
    });
  });

  $( "#external_link" ).click(function() {
    $( "#create_project_toggle" ).hide();
    $( "#external_link_toggle" ).fadeIn( 400, function() {
      $("#project_title").focus();
    });
  });

});
