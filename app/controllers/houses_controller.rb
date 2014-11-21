class HousesController < ApplicationController
  before_action :set_house, only: [:show, :update, :destroy]

  def index
    render json: House.all
  end
 
  def create
    render json: House.create(house_params)
  end
 
  def show
    render json: @house
  end
 
  def update
    render json: @house.update(house_params)
  end
 
  def destroy
    render json: @house.destroy
  end
 
  private
  def set_house
    @house = Book.find(params[:id])
  end
 
  def house_params
    params.require(:house).permit(:title, :author, :description, :isbn)
  end
 
end