//note make the math of width -= width 100 <--- equal to the size of the tag + margins (left and right)

function resizeTagBar() {
  var width = $(window).width();
  width -= width % 100;
  $(".tag-bar-container").css("width", width + "px");
}
$(document).ready( function() {
  resizeTagBar();
  $(window).resize(resizeTagBar);
});
