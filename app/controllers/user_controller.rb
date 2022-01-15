class UserController < ApplicationController

  def get_users
    @users = User.all.where('role_id = 2')
    render json: @users, status: :ok
  end

  def get_admin
    @users = User.all.where('role_id = 1')
    render json: @users, status: :ok
  end

  def create
    @user = User.new user_params
    if @user.save
      render json: true, status: :ok
    else
      render json: false, status: :ok
    end
  end


  private

  def user_params
    params.permit(:name, :sur_name, :role_id, :login, :password)
  end
end