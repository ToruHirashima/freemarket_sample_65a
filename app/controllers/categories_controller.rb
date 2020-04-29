class CategoriesController < ApplicationController
  # カテゴリ一覧画面
  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  # カテゴリ詳細画面
  def show
    @category = Category.find(params[:id])
    @items = Item.includes(:images).where(category_id: @category.subtree_ids).order("id ASC").where.not(status: "2")
  end

  private

end
