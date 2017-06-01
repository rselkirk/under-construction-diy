$(document).ready(function(){
  var title, content, fetchAndInsert;
  title = $('.title');
  modal = $('.modal');


  fetchAndInsert = function(href){
    // console.log(href);
    $.ajax({
      url: 'http://localhost:8080/' + href,
      cache: false,
      success: function(data){
        modal.html(data);
        modal.addClass('open');

      }
    });
  };
  $(window).on('popstate', function(){
    fetchAndInsert("/");
  });
  title.find('a').on('click', function(e){
    var href = $(this).attr('href');
    history.pushState(null, null, href);
    fetchAndInsert(href);
    e.preventDefault();
  });
});