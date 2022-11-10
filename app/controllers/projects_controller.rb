class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    ## list of all projects
    @projects = Project.all
  end

  def show
    ## one project's page
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      redirect_to projects_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :location,
      :start_date, :end_date, skill_ids: [], category_ids: [])
  end
end
