class UsersController < ApplicationController
  # ユーザーマイページ
  def index
    @user = User.all.includes(:items).find(current_user.id)
    @orders = Order.joins(:item).where('orders.user_id = ?', current_user.id).order(created_at: "DESC")
  end
  
  # 未使用
  def show
  end

  def logout
  end

end
