class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @user, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 200
    else
      render json: @user.errors, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy!
      render text: "User was destroyed", status: 200
    else
      render json: @user.errors, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
  end

end
