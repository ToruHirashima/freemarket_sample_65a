class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update]
  
  # 商品購入確認ページ
  def new
    @item = Item.find(params[:item_id])
  end

  # 動作テスト用のため、createアクションはコメントアウト
  def create
    @order = Order.new(item_id: params[:item_id], user_id: current_user.id)
    if @order.save
      # 失敗した場合にロールバックする処理が必要
      @item= Item.find(params[:item_id])
      @item.update(status: 1)
      redirect_to root_path
    else
      render :new  # 不要（一応残しておく）
    end
  end

  def show
  end
  
  def update
    @item = Item.find(params[:item_id])
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
end
