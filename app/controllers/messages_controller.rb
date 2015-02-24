class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(params.require(:message).permit!)

    redirect_to messages_path
  end

  def edit
    @message = Message.find(params[:id])
  end

end
