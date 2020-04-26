class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to item_path(@comment.item)
    else
      @item = Item.find(params[:item_id])
      @comments = @item.comments
      @category = Category.find(params[:item_id])
      flash.now[:alert] = @comment.errors.full_messages
      render "items/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
