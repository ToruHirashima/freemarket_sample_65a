class LikesController < ApplicationController
  before_action :set_item

  def create
    @like = Like.create(user_id: current_user.id, item_id: @item.id)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, item_id: @item.id)
    @like_delete = @like.destroy
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end
end
