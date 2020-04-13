class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  # トップページ
  def index
    @items = Item.all.includes(:images)
  end

  # 商品出品ページ
  def new
    @item = Item.new
    @item.images.new
    @item.build_delivery
  end

  # 商品出品完了
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  # 商品詳細ページ
  def show
  end

  # 商品情報編集ページ
  def edit
  end
  
  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  # 商品削除
  def destroy
    if @item.destroy
      redirect_to root_path
    else
      flash.now[:alert] = "商品を削除できませんでした！"
      render :show
      # redirect_to item_path(params[:id]), alert: "商品を削除できませんでした！"
    end
  end

  # 商品出品・編集ページにカテゴリ（親・子・孫）の情報を送信するアクション
  def category_initial
    if params[:init_id].to_i != 0
      @category = Category.find(params[:init_id])
      @categories = []
      if @category.has_parent?
        @categories += @category.parent.parent.siblings if @category.parent.has_parent?
        @categories += @category.parent.siblings
      end
      @categories += @category.siblings
      @categories += @category.children if @category.has_children?
    else
      @categories = Category.where(ancestry: nil)
    end
  end

  # 商品出品・編集ページに子または孫カテゴリの情報を送信するアクション
  def category_children
    @category_children = Category.find(params[:parent_id]).children
  end

  private
  def item_params
    params.require(:item).permit(:name, :text, :condition, :price, :user_id, :category_id, :size_id, :brand_name, delivery_attributes: [:fee_burden, :service, :area, :handling_time], images_attributes: [:id, :url, :_destroy]).merge(user_id: current_user.id, status: 0)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
