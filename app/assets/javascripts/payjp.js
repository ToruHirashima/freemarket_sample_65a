$(document).on('turbolinks:load', ()=> {
  if (document.getElementById('token_submit') == null) { return; }
  let key = document.getElementById('payjp_public_key').value;
  Payjp.setPublicKey(key);
  document.getElementById('token_submit').addEventListener('click', function(e){
    e.preventDefault();
    let card = {
      number: document.getElementById('number').value,
      cvc: document.getElementById('cvc').value,
      exp_month: document.getElementById('exp_month').value,
      exp_year: document.getElementById('exp_year').value
    };
    Payjp.createToken(card, function(status, response) {
      if (status == 200) {
        document.getElementById('payjp_token').setAttribute("value", response.id);
        document.inputForm.submit();
      } else{
        alert('カード情報が正しくありません');
      }
    });
  });
});