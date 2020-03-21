class ItemsController < ApplicationController

  # トップページ（商品一覧表示）
  def index
    @items = Item.all.includes(:images)
  end

  # 商品出品ページ（ユーザー新規登録/ログインページはview/deviseにあるファイルに設定）
  def new
  end

  # 商品出品完了
  def create
  end

  # 商品詳細ページ（ユーザーマイページはuserコントローラーに設定）
  def show
    @item = Item.find(params[:id])
  end

  # 商品情報編集ページ
  def edit
  end

  # 商品購入確定（購入がなされると商品情報の状態が切り替わる）
  def update
  end

  # 商品削除
  def destroy
  end
end
