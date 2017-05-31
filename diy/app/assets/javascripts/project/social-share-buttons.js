$(document).ready(function onReady() {

  var pinterestShare = document.querySelector('[data-js="pinterest-share"]');
  var twitterShare = document.querySelector('[data-js="twitter-share"]');
  var facebookShare = document.querySelector('[data-js="facebook-share"]');

  pinterestShare.onclick = function(event) {
    event.preventDefault();
    var pinterestWindow = window.open('http://pinterest.com/pin/create/button/?url=' + document.URL, 'pinterest-popup', 'height=350,width=600');
    if(pinterestWindow.focus) { pinterestWindow.focus(); }
    return false;
  };

  twitterShare.onclick = function(event) {
    event.preventDefault();
    var twitterWindow = window.open('https://twitter.com/share?url=' + document.URL, 'twitter-popup', 'height=350,width=600');
    if(twitterWindow.focus) { twitterWindow.focus(); }
    return false;
  };

  facebookShare.onclick = function(event) {
    event.preventDefault();
    var facebookWindow = window.open('https://www.facebook.com/sharer/sharer.php?u=' + document.URL, 'facebook-popup', 'height=350,width=600');
    if(facebookWindow.focus) { facebookWindow.focus(); }
    return false;
  };

});

