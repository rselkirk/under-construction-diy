$(document).ready(function onReady() {

  $(".start-complete").click(function(){
    $(this).toggleClass("not-complete");
  });

  $(".start-not-complete").click(function(){
    $(this).toggleClass("completed");
  });

  $(".start-saved").click(function(){
    $(this).toggleClass("not-saved");
  });

  $(".start-not-saved").click(function(){
    $(this).toggleClass("saved");
  });


  $('#saves-count').on('ajax:success', (e, data, status, xhr) => {
    $('.fa-bookmark-o').text(`(${data.saves})`);
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#saves-count').append('<p>ERROR</p>');
  });

  $('#completes-count').on('ajax:success', (e, data, status, xhr) => {
    $('.fa-wrench').text(`(${data.completes})`);
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#completes-count').append('<p>ERROR</p>');
  });

});