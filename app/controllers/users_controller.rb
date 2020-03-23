class UsersController < ApplicationController
  # ユーザーマイページ
  def index
    @user = User.all.includes(:items).find(current_user.id)
  end
  
  # 未使用
  def show
  end

  def logout
  end

end
