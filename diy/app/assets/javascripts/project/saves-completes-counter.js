$(document).ready(function onReady() {

  $(".mark_complete").click(function(){
    // $(".mark_complete").hide();
    // $(".completed").show();
    $(this).toggleClass("completed");
    // $( "div.mark_complete" ).replaceWith( "completed" );
  });

  $(".completed").click(function(){
    $(this).toggleClass("mark_complete");
  });


  $('#saves-count').on('ajax:success', (e, data, status, xhr) => {
    $('.fa-bookmark-o').text(`(${data.saves})`);
    console.log(data.saves)
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#saves-count').append('<p>ERROR</p>');
  });

  $('#completes-count').on('ajax:success', (e, data, status, xhr) => {
    console.log(data.completes)
    // console.log(data.status)
    $('.fa-wrench').text(`(${data.completes})`);
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#completes-count').append('<p>ERROR</p>');
  });

});