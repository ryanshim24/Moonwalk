class FavoriteController < ApplicationController
  before_action :set_favorite, only: [:update, :destroy]

  def index
    render json: Favorite.all
  end
 
  def create
    price = params[:price]
    address = params[:address]
    link = params[:link]
    y = Favorite.create({price: price, address: address, link: link})
    u = User.find session[:user_id]
    u.favorites << y
    render json: y
  end
 
  def show
    user = User.find session[:user_id]
    userFavs = user.favorites
    render json: userFavs
  end
 
  def update
    render json: @favorite.update(favorite_params)
  end
 
  def destroy
    # user = User.find session[:user_id]
    favorite = Favorite.find params[:id]
    render json: favorite.destroy
  end
 
  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
 
  def favorite_params
    params.require(:favorite).permit(:title, :author, :description, :isbn)
  end
end
