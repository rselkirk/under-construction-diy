$(document).ready(function onReady() {

  // vw = $(window).outerWidth();

  $('#save').click(flipToSaved);
  $('#complete').click(flipToCompleted);

  // if (vw > 768) {
  //   $('.card').hover(function() {
  //     $('.description').toggleClass('show');
  //     $('.image-wrapper').toggleClass('shrink');
  //   }
  //   );
  // }

  function flipToSaved() {
    $('#save').addClass('flipped');
    $('#save').addClass('added');
    $(this).find('.backside').addClass('show');
    $(this).find('.front').addClass('hide');
  }

  function flipToCompleted() {
    $('#complete').addClass('flipped');
    $('#complete').addClass('added');
    $(this).find('.backside').addClass('show');
    $(this).find('.front').addClass('hide');
  }

});
