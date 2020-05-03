$(document).on('turbolinks:load', ()=> {
  $(function () {
    $('#star').on("ajax:success", function(){
      if ($('.detail-box-button-container__bookmark').hasId('#star')) {
        $('.detail-box-button-container__bookmark').removeId('#star').addId('#delete_star');
      } else {
        $('.detail-box-button-container__bookmark').removeId('#delete_star').addId('#star');
      }
    });
  });
}); 