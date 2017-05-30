$(document).ready(function onReady() {
  $(".external_link").hide();
  $("#project_url").focus();
  $('#create_project').on('click', function () {
    $('.card').toggleClass('flipped');
    $("#project_title").focus();
  });

  $('.fa-chevron-right').on('click', function () {
    $('.card').toggleClass('flipped');
  });


  // $( "#create_project" ).click(function() {
  //   $( "#external_link_toggle" ).hide();
  //   $( "#create_project_toggle" ).fadeIn( 400, function() {
  //     $("#project_title ").focus();
  //   });
  // });

  // $( "#external_link" ).click(function() {
  //   $( "#create_project_toggle" ).hide();
  //   $( "#external_link_toggle" ).fadeIn( 400, function() {
  //     $("#project_url").focus();
  //   });
  // });

  $('.new_project').on('ajax:success', (e, data, status, xhr) => {
    console.log('test')
    $(".link").remove();
    $(".external_link").show();
    $('#url-show').find("input[type=text], textarea").val(data.url)

  //   $("#external_link_toggle").remove();
    // $('#url-show').find("input[type=text], textarea").val(data.url)
    $('#title-show').find("input[type=text], textarea").val(data.title)
    $('#description-show').find("input[type=text], textarea").val(data.description)
    $('#image-show-upload').find("input[type=text], textarea").val(data.image)
    $('#image-show').append(`<img src="${data.image}">`);

  }).on('ajax:error', (e, xhr, status, error) => {
  //   console.log('error')
  //   $('#url-show').append('<p>ERROR</p>')
  });
});

