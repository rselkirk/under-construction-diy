$(document).ready(function onReady() {
  $(".external_link").hide();
  $("#project_url").focus();
  $('#create_project').on('click', function () {
    $('.card').toggleClass('flipped');
    $('#project_title').focus();
  });

  $('.fa-arrow-right').on('click', function () {
    $('.card').toggleClass('flipped');
  });

 $('.fa-home').on('click', function () {
    window.location.href='/';
  });

  $('.new_project').on('ajax:success', (e, data, status, xhr) => {
    console.log('test');
    $(".link").remove();
    $(".external_link").show();
    $('#url-show').find("input[type=text], textarea").val(data.url)
    $('#title-show').find("input[type=text], textarea").val(data.title)
    $('#description-show').find("input[type=text], textarea").val(data.description)
    $('#image-show-upload').find("input[type=text], textarea").val(data.image)
    $('#image-show').append(`<img src="${data.image}">`);
  }).on('ajax:error', (e, xhr, status, error) => {
  });
});

