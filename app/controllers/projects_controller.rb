class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @projects = Project.global_search(params[:query])
    else
      @projects = Project.all
    end
  end
  
  def show
    ## one project's page
    @project = Project.find(params[:id])
    @project_member = ProjectMember.new
    @posts = Post.where(project_id: params[:id])
    @post = Post.new
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
