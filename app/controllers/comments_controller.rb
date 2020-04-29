class CommentsController < ApplicationController
  before_action :move_to_user_registration
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to item_path(@comment.item)
    else
      @item = Item.find(params[:item_id])
      @items = Item.includes(:images).where(category_id: @item.category.subtree_ids).order("id ASC").where.not(status: "2")
      flash.now[:alert] = @comment.errors.full_messages
      render "items/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def move_to_user_registration
    redirect_to new_user_registration_path unless user_signed_in?
  end
end
