document.addEventListener("DOMContentLoaded", function() {
  if (document.getElementById('token_submit') == null) { return; }
  console.log(document.getElementById('token_submit'));
  Payjp.setPublicKey('pk_test_624210997c776c987509d911');
  document.getElementById('token_submit').addEventListener('click', function(e){
    e.preventDefault();
    console.log("koko");
    let card = {
      number: document.getElementById('number').value,
      cvc: document.getElementById('cvc').value,
      exp_month: document.getElementById('exp_month').value,
      exp_year: document.getElementById('exp_year').value
    };
    Payjp.createToken(card, function(status, response) {
      console.log(status);
      if(status == 200) {
        document.getElementById('payjp_token').setAttribute("value", response.id);
        console.log(document.getElementById('payjp_token'));
        console.log(response.id);
        document.inputForm.submit();
      } else{
        alert('カード情報が正しくありません');
      }
    });
  });
});