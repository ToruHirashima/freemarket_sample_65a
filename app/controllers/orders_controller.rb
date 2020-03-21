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

  require 'payjp'

  def purchase
    Payjp.api_key = "sk_test_b2c67dbefa1c1223a6878f7c"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end
end
