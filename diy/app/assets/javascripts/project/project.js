$(document).ready(function onReady() {

  var $toggleOverlay = $(".toggle-overlay");
  var $shim = $(".shim");
  var $overlay = $(".overlay");
  var $content = $(".content");

  function toggleModal() {
    $overlay.toggleClass('open');
    $shim.toggleClass('open');
    $content.toggleClass('blur');
  }

  $toggleOverlay.on('click', toggleModal);
  $shim.on('click', toggleModal);

});