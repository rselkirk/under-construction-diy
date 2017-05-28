$(document).ready(function onReady() {

  var $modalTrigger = $(".modal-trigger");
  var $overlayLayer = $(".overlay-layer");
  var $modal = $(".modal");
  var $backgroundLayer = $(".background-layer");

  function toggleModal() {
    $modal.toggleClass('open');
    $overlayLayer.toggleClass('open');
    $backgroundLayer.toggleClass('blur');
  }

  $modalTrigger.on('click', toggleModal);
  $overlayLayer.on('click', toggleModal);

});