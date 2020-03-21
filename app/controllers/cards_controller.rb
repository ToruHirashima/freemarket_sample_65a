class CardsController < ApplicationController

  def index
  end
 
  def pay
     Payjp.api_key = 'sk_test_b2c67dbefa1c1223a6878f7c'
     Payjp::Charge.create(
       #amountは値段を記載
       amount: 3500, 
       card: params['payjp-token'],
       currency: 'jpy'
     )
  end
end