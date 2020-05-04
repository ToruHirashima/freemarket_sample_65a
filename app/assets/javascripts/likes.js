$(document).on('turbolinks:load', ()=> {
  $(function () {
    if ($('.detail-box-button-container__bookmark').hasId('')
    $('#star').on("click", function(){
      url = 
      $.ajax({
        type: 'POST'
        url: url
    
        if ($('.detail-box-button-container__bookmark').hasId('#star')) {
          $('.detail-box-button-container__bookmark').removeId('#star').addId('#delete_star');
        } else {
          $('.detail-box-button-container__bookmark').removeId('#delete_star').addId('#star');
        }
      })
    });
  });
}); 