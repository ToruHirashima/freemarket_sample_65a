class Items::SearchesController < ApplicationController
  def index
    @keyword = params[:keyword]
    @items = Item.search(@keyword)
  end
end
