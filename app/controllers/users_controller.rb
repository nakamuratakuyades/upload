class UsersController < ApplicationController

  before_action :authenticate_user,{only:[:index, :edit, :update]}

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    @favorites_blogs = @user.favorites
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
