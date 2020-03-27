class UsersController < ApplicationController
  before_action :set_orders, except: [:exhibitor_sale, :exhibitor_progress, :exhibitor_complete, :logout]
  before_action :set_items, only: [:exhibitor_sale, :exhibitor_progress, :exhibitor_complete]
  # ユーザーマイページ
  def index
    # @user = User.all.includes(:items).find(current_user.id)
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).where('items.status = ?', 1).order(created_at: "DESC")
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).order(created_at: "DESC")
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end
  
  def info_notice
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end

  def info_todo
  end
  
  def purchase_progress
    # @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end
  
  def purchase_complete
  end

  def exhibitor_sale
    # @items = Item.joins("LEFT OUTER JOIN orders ON items.id = orders.item_id").where('items.user_id = ?', current_user.id)
  end
  
  def exhibitor_progress
  end

  def exhibitor_complete
  end

  def logout
  end

  private
  def set_orders
    @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).or(Order.joins(:item).where('items.user_id = ?', current_user.id)).order(created_at: "DESC")
  end

  def set_items
    @items = Item.joins("LEFT OUTER JOIN orders ON items.id = orders.item_id").where('items.user_id = ?', current_user.id)
  end
end
