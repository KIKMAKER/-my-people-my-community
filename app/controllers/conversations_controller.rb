class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @invitor = current_user
    @invitee = User.find_by_param(params[:user_id])
    @conversation = Conversation.find_or_create_by(invitor: @invitor, invitee: @invitee)
    redirect_to @conversation
  end
end
