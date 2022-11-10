class ProjectMembersController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @project_member = ProjectMember.new(
      project: @project,
      user: current_user
    )
    if @project_member.save
      redirect_to @project, notice: "Your application has been submitted."
    else
      redirect_to @project, error: "Error submitting your request, please try again."
    end
  end

  def update
    
  end

end
