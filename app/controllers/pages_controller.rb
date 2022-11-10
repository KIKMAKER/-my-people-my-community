class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home; end

  def dashboard
    @projects = Project.where(user: current_user)
    @project_member = ProjectMember.where(user: current_user)
  end
end
