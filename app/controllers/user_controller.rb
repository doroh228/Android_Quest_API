class UserController < ApplicationController

  def index
    # получение всех юзеров
    @users = User.all.where('role_id = 2')
    render json: @users, status: :ok
  end

  def get_admin
    # получение админа
    @users = User.all.where('role_id = 1')
    render json: @users, status: :ok
  end

  def create
    # создание нового пользвоателя с проверкой на логин
    @user = User.new user_params
    if @user.save
      render json: true, status: :ok
    else
      render json: false, status: :ok
    end
  end

  def destroy
    @user = User.find_by id: params[:id]
    if !@user.nil?
      @user.destroy
      render json: true, status: :ok
    else
      render json: false, status: :ok
    end
  end

  def option_r
    render status: :ok
  end

  private

  def user_params
    params.permit(:name, :sur_name, :role_id, :login, :password)
  end

end