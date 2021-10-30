class Customers::ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])
    @items = Item.where(genre_id: @genre.id).page(params[:page]).per(8)
    @genres = Genre.all
  end

  def index
    @search = Item.ransack(params[:q])
    @items = @search.result.page(params[:page]).per(10)
  end

end