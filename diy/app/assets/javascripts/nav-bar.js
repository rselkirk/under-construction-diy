$(document).ready( function() {
  $('.vertical').hide();
  $('html').click(function(){
    $('.vertical').hide();
  });
  $('.fa-user-circle-o').click(function(e){
    e.stopPropagation();
    $('.vertical').toggle();
  });
  $('.fa-sign-in').click(function(e){
    e.stopPropagation();
    $('.vertical').toggle();
  });
});