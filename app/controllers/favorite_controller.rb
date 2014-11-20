class FavoriteController < ApplicationController
  before_action :set_favorite, only: [:show, :update, :destroy]

  def index
    render json: Favorite.all
  end
 
  def create
    render json: Favorite.create(favorite_params)
  end
 
  def show
    render json: @favorite
  end
 
  def update
    render json: @favorite.update(favorite_params)
  end
 
  def destroy
    render json: @favorite.destroy
  end
 
  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
 
  def favorite_params
    params.require(:favorite).permit(:title, :author, :description, :isbn)
  end
end
