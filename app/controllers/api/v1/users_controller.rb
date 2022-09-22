class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.valid?
      token = encode_token(user_id: @user.id)
      render json: { user: @user, token: }, status: :ok
    else
      render json: { error: 'user not created' }, status: :not_acceptable
    end
  end

  def login
    @user = User.find_by(username: user_params[:username])

    if @user&.authenticate(user_params[:password])
      token = encode_token(user_id: @user.id)
      render json: { user: @user, token:, notice: 'Welcome To The Quest World' }, status: :ok
    else
      render json: { error: 'Invalid username or password' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
