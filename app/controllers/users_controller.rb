class UsersController < ApplicationController
  def index
    users = User.all.includes(:tasks)
    render json: users, except: [:created_at, :updated_at]
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  private

  def user_params 
    params.require(:user).permit(:username, :first_name, :last_name)
  end
end
