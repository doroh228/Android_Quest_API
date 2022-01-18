class RoleController < ApplicationController
  def index
    @roles = Role.all
    render json: @roles, status: :ok
  end

  def create
    @role = Role.new role_params
    if @role.save
      render json: [{status: true, name: @role.name}], status: :ok
    else
      render json: false, status: :ok
    end
  end





  private

  def role_params
    params.permit(:name)
  end

end