class OrdersController < ApplicationController
  require 'PAYJP'
  
  before_action :set_order, only: [:show, :update]
  before_action :set_item, only: [:new, :create, :update]

  # 商品購入確認ページ
  def new
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to new_card_path
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @card_info = customer.cards.retrieve(card.card_id)
    end
  end

  def create
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Psyjp::Charge.create(
      :amount => @item.price,
      :customer => card.customer_id,
      :currency => 'jpy'
    )
    @order = Order.new(item_id: paramas[:item_id], user_id: current_user.id)
    if @order.save
      @item = Item.find(params[item_id])
      @item.update(status: 1)
    else
      render :new
    end
  end

  def show
  end
  
  def update
    # @item = Item.find(params[:item_id])
    if @item.update(status: 2)
      redirect_to item_order_path
    else
      flash.now[:alert] = "商品受取通知ができませんでした"
      render :show
    end
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end