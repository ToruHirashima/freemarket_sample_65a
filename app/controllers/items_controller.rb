class ItemsController < ApplicationController
  # トップページ（商品一覧表示）
  def index
    @items = Item.all.includes(:images)
  end

  # 商品出品ページ（ユーザー新規登録/ログインページはview/deviseにあるファイルに設定）
  def new
    @item = Item.new
    @item.images.new
    @item.build_delivery
  end

  # 商品出品完了
  def create
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  # 商品詳細ページ（ユーザーマイページはuserコントローラーに設定）
  def show
    @item = Item.find(params[:id])
  end

  # 商品情報編集ページ
  def edit
    @item = Item.find(params[:id])
  end

  # 商品購入確定（購入がなされると商品情報の状態が切り替わる）
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  # 商品削除
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :text, :condition, :price, :user_id, :category_id, :size_id, :brand_name, delivery_attributes: [:fee_burden, :service, :area, :handling_time], images_attributes: [:id, :url, :_destroy]).merge(user_id: current_user.id, status: 0)
  end
end
