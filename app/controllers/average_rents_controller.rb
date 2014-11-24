class AverageRentsController < ApplicationController

  def create
    render json: Average_rent.create(average_rent_params)
  end

  
end
