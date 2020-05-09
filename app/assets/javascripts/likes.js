$(document).on('turbolinks:load', ()=> {
  $(function () {
    $('.detail-box-button-container__bookmark').on("click", function(e){
      e.preventDefault();
      if ($('.detail-box-button-container__bookmark').has('#delete_likes')) {
        $.ajax({
          type: 'POST',
          url: location.href + '/likes',
          datatype: 'json'
        })
        console.log
        .done(function(data) {
          $('#likes_star').removeClass();
          $('#likes_star').addClass('fa fa-star');
          $('#likes_star_text').html("お気に入り " + data.count);
        })
      } else {
        $.ajax({
          url: location.href + "/likes/" + data.user_id,
          type: "DELETE",
          dataType: "json"
        })
        .done(function(data) {
          $('#likes_star').removeClass();
          $('#likes_star').addClass('far fa fa-star');
          $('#likes_star_text').html("お気に入り " + data.count);
        })
      }
    })
  })
}) 