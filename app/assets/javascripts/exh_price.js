$(document).on('turbolinks:load', ()=> {
  //商品説明の字数カウントを行う
  $('#exh-text').on('input', function() {
    console.log('up');
    $('#exh-count').text(String($('#exh-text').val().length) + '/1000');
  });

  //商品価格の手数料・利益の自動表示を行う
  $('#exh-price').on('input', function() {
    let price = $('#exh-price').val();
    if (price >= 300 && price <= 9999999) {
      $('#exh-charge').text('¥' + String(Math.floor(price * 0.1)).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,'));
      $('#exh-gain').text('¥' + String(Math.ceil(price * 0.9)).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,'));
    } else {
      $('#exh-charge').text('—');
      $('#exh-gain').text('—');
    }
  });
});
