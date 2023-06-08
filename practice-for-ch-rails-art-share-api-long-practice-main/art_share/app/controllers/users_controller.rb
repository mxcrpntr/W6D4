# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def index
    if !params.has_key?(:username)
      users = User.all
      render json: users
    else
      user = User.find_by!(username: params[:username])
      if user
        render json: user
      end
    end
  end
  def create
    user = User.new(params_permit)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  def show
    user = User.find(params[:id])
    render json: user
  end
  def update
    user = User.find(params[:id])
    user.update(params_permit)
    render json: user
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
  end
  private
  def params_permit
    params.require(:user).permit(:username)
  end
end
