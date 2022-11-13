class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home
    if params[:query].present?
      @projects = Project.global_search(params[:query])
    else
      @projects = Project.all
    end
  end

  def dashboard
    @projects = Project.where(user: current_user)
    @project_member = ProjectMember.where(user: current_user)
    # @conversations_invitor = Conversation.where(invitor: current_user)
    # @conversations_invitee = Conversation.where(invitee: current_user)
    @conversations = Conversation.where(invitor: current_user).or(Conversation.where(invitee: current_user))
  end
end
