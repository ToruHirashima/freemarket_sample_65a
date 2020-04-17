class OrdersController < ApplicationController
  before_action :set_item, :set_image
  def new
    @item = Item.find(params[:item_id])
    @item.update(status: 2)
    order = Order.new
    order.user_id = 1
    order.item_id = @item.id
    order.save
    redirect_to controller: 'orders', action: 'show', id: @item.id
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
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
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
    redirect_to action: new
  end
end
