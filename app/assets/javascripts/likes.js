$(document).on('turbolinks:load', ()=> {
  $('#create_star').on("click", function(e) {
    e.preventDefault();
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
        url: location.href + "/likes/" + "1",
        type: "DELETE",
        dataType: "json"
      })
      .done(function(data) {
        $('#detail__star').removeClass();
        $('#detail__star').addClass('far fa fa-star');
        $('#detail__star-text').html("お気に入り " + data.count);
      })
    }



  });
}); 
