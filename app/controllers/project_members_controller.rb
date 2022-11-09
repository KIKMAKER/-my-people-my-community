class ProjectMembersController < ApplicationController
  def create
    @project_member = User.find_by_param(params[:id])
  end

  def update

  end
end
