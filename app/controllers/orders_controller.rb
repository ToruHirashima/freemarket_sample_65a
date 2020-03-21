class OrdersController < ApplicationController
  before_action :set_item, :set_image
  def new
  end

  def create
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_image
    @image = Image.find(params[:item_id])
  end
end