class OrdersController < ApplicationController
  before_action :set_item, :set_image
  def new
  end

  def create
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_image
    @image = Image.find(params[:item_id])
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