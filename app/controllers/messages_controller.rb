class MessagesController < ApplicationController
  def index; end

  def new
    @message = Message.new
  end

  def create
    Message.create(messages_params)

    redirect_to messages_path
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update!(messages_params)

    redirect_to messages_path
  end

  def destroy
    message = Message.find(params[:id])
    message.delete
    redirect_to messages_path
  end

  private
  def messages_params
    params.require(:message).permit(:author, :content)
  end

end
