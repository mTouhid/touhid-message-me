class MessagesController < ApplicationController

  before_action :require_logged_in

  def create
    @message = Message.new(params.require(:message).permit(:body))
    @message.user = current_user
    if @message.save
      redirect_to root_path
    else
      flash[:error] = "Message not send"
      redirect_to root_path
    end
  end
end
