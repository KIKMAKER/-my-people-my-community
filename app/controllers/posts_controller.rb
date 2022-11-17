class PostsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @post = Post.new(post_params)
    @post.user = current_user
    @post.project = @project
    if @post.save
      redirect_to project_post_room_path(@project)
    else
      render "../views/projects/show.html.erb", status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
