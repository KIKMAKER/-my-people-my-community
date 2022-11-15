class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @conversation = Conversation.find(params[:conversation_id])
    @message.conversation = @conversation
    @message.user = current_user

    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        message: render_to_string( partial: "messages/messages", locals: { message: @message }
        ),
        sender_id: @message.user.id
      )
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
