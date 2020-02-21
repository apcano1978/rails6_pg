class Admin::AdminBaseController < ApplicationController
  before_action :authenticate_user

  private

  # In order to authenticate user I am assuming we have a token stored in rails session
  # In case there is no token, before anything is executed we´re rejecting the user to 
  # the root_path

  def authenticate_user
    @current_token = session[:current_token]

    if @current_token.nil?
      flash[:danger] = 'Unauthorized user'
      redirect_to root_path 
    end
  end
end
