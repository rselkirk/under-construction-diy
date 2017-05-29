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

  $('#external_link_toggle').on('ajax:success', (e, data, status, xhr) => {
    $("#external_link_toggle").remove();
    $('#url-show').find("input[type=text], textarea").val(data.url)
    $('#title-show').find("input[type=text], textarea").val(data.title)
    $('#description-show').find("input[type=text], textarea").val(data.description)
    $('#image-show-upload').find("input[type=text], textarea").val(data.image)
    $("#project_project_uploads_attributes_0_image_url").attr("value", `${data.image}`)
    $('#image-show').append(`<img src="${data.image}">`);

  }).on('ajax:error', (e, xhr, status, error) => {
    console.log('error')
    $('#url-show').append('<p>ERROR</p>')
  });
});
