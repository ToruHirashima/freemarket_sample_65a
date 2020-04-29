class UsersController < ApplicationController
  before_action :move_to_index
  before_action :set_orders, except: [:exhibitor_sale, :exhibitor_progress, :exhibitor_complete, :logout]
  before_action :set_items, only: [:exhibitor_sale, :exhibitor_progress, :exhibitor_complete]

  def index
  end
  
  def info_notice
  end

  def info_todo
  end
  
  def purchase_progress
  end
  
  def purchase_complete
  end

  def exhibitor_sale
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
    @items = Item.joins("LEFT OUTER JOIN orders ON items.id = orders.item_id").where('items.user_id = ?', current_user.id).order(created_at: "DESC")
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
