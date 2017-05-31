$(document).ready(function onReady() {

  // Complete button toggle colour and text
  $(".start-complete").click(function(){
    $(this).toggleClass("not-complete");
  });

  $(".start-not-complete").click(function(){
    $(this).toggleClass("completed");
  });

  $('#complete-button-text').click(function() {
    if ($(this).val() == "Completed!") {
      $(this).val("Mark Complete");
    }
    else if ($(this).val() == "Mark Complete") {
      $(this).val("Completed!");
    }
  });

  // start button toggle color and text
  $(".start-saved").click(function(){
    $(this).toggleClass("not-saved");
  });

  $(".start-not-saved").click(function(){
    $(this).toggleClass("saved");
  });

  $('#save-button-text').click(function() {
    if ($(this).val() == "Saved to Favourites!") {
      $(this).val("Add to Favourites");
    }
    else if ($(this).val() == "Add to Favourites") {
      $(this).val("Saved to Favourites!");
    }
  });

  // Changes save and complete counts
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


