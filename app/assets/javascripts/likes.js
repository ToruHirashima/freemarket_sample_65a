$(document).on('turbolinks:load', ()=> {
  $(function () {
    $('#create_star').on("click", function(e) {
      e.preventDefault();
      let url = location.href + "/likes"
      console.log(url);
      $.ajax({
        url: url,
        type: "POST",
        // data: {},
        dataType: "json"
      })
      .done(function(data) {
        console.log(data);
        $('#detail__star').removeClass();
        $('#detail__star').addClass('fa fa-star');
        $('#detail__star-text').html("お気に入り " + data.count);
      })
    });
    // $('#star').on("ajax:success", function(){
    //   if ($('.detail-box-button-container__bookmark').hasId('#star')) {
    //     $('.detail-box-button-container__bookmark').removeId('#star').addId('#delete_star');
    //   } else {
    //     $('.detail-box-button-container__bookmark').removeId('#delete_star').addId('#star');
    //   }
    // });
  });
}); 