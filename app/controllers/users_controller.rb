class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
    ##status?
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :linkedin_url, :first_name, :last_name)
  end
end
