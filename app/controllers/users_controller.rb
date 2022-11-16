class UsersController < ApplicationController

  before_action :find_user, only: %i[show edit update]

  def index
    if params[:query].present?
      @users = User.global_search(params[:query])
    else
      @users = User.all
    end
  end

  def show
    @projects = Project.all
    
  end

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
    params.require(:user).permit(:email, :username, :bio, :location, :linkedin_url, :first_name, :last_name, :photo)
  end
end
