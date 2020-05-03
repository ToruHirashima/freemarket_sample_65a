$(document).on('turbolinks:load', ()=> {
  $.ajax({
    url: "/items/user_id",
    type: "GET",
    dataType: "json"
  })
  .done(function(data) {
    bookMark(data);
  });
  function bookMark(data) {
    $('#create_star').on("click", function(e) {
      e.preventDefault();
      e.stopPropagation();
      if ($('#detail__star').attr("class") == 'far fa fa-star') {
        $.ajax({
          url: location.href + "/likes",
          type: "POST",
          dataType: "json"
        })
        .done(function(data) {
          $('#detail__star').removeClass();
          $('#detail__star').addClass('fa fa-star');
          $('#detail__star-text').html("お気に入り " + data.count);
        })
      } else {
        $.ajax({
          url: location.href + "/likes/" + data.user_id,
          type: "DELETE",
          dataType: "json"
        })
        .done(function(data) {
          $('#detail__star').removeClass();
          $('#detail__star').addClass('far fa fa-star');
          $('#detail__star-text').html("お気に入り " + data.count);
        })
      };
    });
  };
}); 
