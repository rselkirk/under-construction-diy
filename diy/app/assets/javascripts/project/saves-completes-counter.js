$(document).ready(function onReady() {
  $('#saves-count').on('ajax:success', (e, data, status, xhr) => {
    $('#saves-count-show').text(data.saves);
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#saves-count').append('<p>ERROR</p>')
  });
  
  $('#completes-count').on('ajax:success', (e, data, status, xhr) => {
    $('#completes-count-show').text(data.completes);
  }).on('ajax:error', (e, xhr, status, error) => {
    $('#completes-count').append('<p>ERROR</p>')
  });
});