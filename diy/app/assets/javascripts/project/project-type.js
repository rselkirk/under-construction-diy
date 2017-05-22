$(function onReady() {
  $( "#create_project" ).click(function() {
    $( "#external_link_toggle" ).hide()
    $( "#create_project_toggle" ).slideToggle( "1000", function() {
      $("f.text_field ").focus();
    });
  });

  $( "#external_link" ).click(function() {
    $( "#create_project_toggle" ).hide()
    $( "#external_link_toggle" ).slideToggle( "1000", function() {
      $("f.text_field").focus();
    });
  });
});
