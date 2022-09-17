class MotorcyclesController < ApplicationController
  def index
    @motorcycles = Motorcycle.all
    render json: @motorcycles
  end

  def show
    @Motorcycle = Motorcycle.find(params[:id])
    reder json: @motorcycle
  end
end
