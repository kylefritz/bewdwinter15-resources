class HomeController < ApplicationController
  def show
    redirect_to messages_path
  end
end
