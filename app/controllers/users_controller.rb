class UsersController < ApplicationController

  before_action :find_user, only: %i[show edit update]

  def index
    @users = User.all
  end

  def show; end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
    ## status?
  end

  private

  def find_user
    @user = User.find_by_param(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :linkedin_url, :first_name, :last_name)
  end
end