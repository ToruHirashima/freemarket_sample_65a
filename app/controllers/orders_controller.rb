class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update]
  before_action :set_image, :set_item, :set_delivery

  # 商品購入確認ページ
  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @item.update(status: 1)
    order = Order.new
    order.user_id = current_user.id
    order.item_id = @item.id
    order.save
    redirect_to controller: orders, action: show, id: item_id 
  end

  # 動作テスト用のため、createアクションはコメントアウト
  # def create
  #   @order = Order.new(item_id: params[:item_id], user_id: current_user.id)
  #   if @order.save
  #     # 失敗した場合にロールバックする処理が必要
  #     @item= Item.find(params[:item_id])
  #     @item.update(status: 1)
  #     redirect_to root_path
  #   else
  #     render :new  # 不要（一応残しておく）
  #   end
  # end

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

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_image
    @image = Image.find(params[:item_id])
  end

  def set_delivery
    @delivery = Delivery.find(params[:item_id])
  end

  def purchase
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end
end