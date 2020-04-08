class OrdersController < ApplicationController
  # 商品購入確認ページ
  def new
    @item = Item.find(params[:item_id])
    # binding.pry
  end

  def create
    @order = Order.new(item_id: params[:item_id], user_id: current_user.id)
    if @order.save
      # 失敗した場合にロールバックする処理が必要
      @item= Item.find(params[:item_id])
      @item.update(status: 1)
      redirect_to root_path
    else
      render :new
    end
  end

end
