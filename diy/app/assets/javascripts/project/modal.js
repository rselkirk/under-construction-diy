$(document).ready(function(){
  var title, content, fetchAndInsert, toggleModal;
  var overlayLayer = $(".overlay-layer");
  var backgroundLayer = $(".background-layer");
  title = $('.title');
  modal = $('.modal');


  toggleModal = function() {
    backgroundLayer.addClass('blur');
    modal.addClass('open');
    overlayLayer.addClass('open');
  }

  fetchAndInsert = function(href){
    $.ajax({
      url: 'http://localhost:8080/' + href,
      cache: false,
      success: function(data){
        toggleModal();
        modal.html(data);
      }
    });
  };

  // $(window).on('popstate', function(){
  //   fetchAndInsert("/");
  // });

  title.find('a').on('click', function(e){
    var href = $(this).attr('href');
    history.pushState(null, null, href);
    fetchAndInsert(href);
    e.preventDefault();
  });

 overlayLayer.on('click', function(){
    overlayLayer.removeClass('open');
    modal.removeClass('open');
    backgroundLayer.removeClass('blur');
  });


});