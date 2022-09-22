class Api::V1::MotorcycleController < ApplicationController
  before_action :authorize
  def index
    @motorcycle = Motorcycle.all
    render json: @motorcycle
    # http://127.0.0.1:3000/api/v1/motorcycles
  end

  def show
    @motorcycle = Motorcycle.find(params[:id])
    render json: @motorcycle
    # http://127.0.0.1:3000/api/v1/motorcycles/1
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @user = authorized_user
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      render json: @motorcycle
      # http://127.0.0.1:3000/api/v1/motorcycles
    else
      render json: { error: 'Error creating motorcycle' }
    end
  end

  def destroy
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.destroy
  end

  private

  def motorcycle_params
    params.permit(:brand, :model, :year, :image, :description, :booking_fee, :reserved)
  end
end
