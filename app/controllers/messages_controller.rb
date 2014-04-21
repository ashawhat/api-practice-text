class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new(message_params)
  end

  def create
    @message = Message.create(message_params)

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.js
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end

  private

  def message_params
    params.require(:message).permit(:Body, :To, :From)
  end
end
