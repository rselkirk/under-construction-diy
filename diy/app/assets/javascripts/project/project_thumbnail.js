$(window).load(function() {
  $('.post-module').hover(function() {
    $(this).find('.summary').stop().animate({
      height: "toggle",
      opacity: "toggle"
    }, 300);
  });
});