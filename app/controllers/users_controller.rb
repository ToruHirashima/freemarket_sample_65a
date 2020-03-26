class UsersController < ApplicationController
  # ユーザーマイページ
  def index
    # @user = User.all.includes(:items).find(current_user.id)
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).where('items.status = ?', 1).order(created_at: "DESC")
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).order(created_at: "DESC")
    @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
    # @all_orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end
  
  # 未使用
  def show
  end

  def logout
  end

  def info
    @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end

  def purchase
    @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end

  def exhibitor
    @items = Item.joins("LEFT OUTER JOIN orders ON items.id = orders.item_id").where('items.user_id = ?', current_user.id)
  end
  
end
