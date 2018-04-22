class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:email => params[:email])
    session[:user_id] = user.id
    #every request is independent and doesn't remember
    # so how do we log in?
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
