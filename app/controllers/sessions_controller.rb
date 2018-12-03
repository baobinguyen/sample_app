class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      log_in user
      remember_me user
      redirect_to user
    else
      flash.now[:danger] = t ".error_messages"
      render :new
    end
  end

  def remember_me user
    if params[:session][:remember_me] == Settings.sessions.checked
      remember user
    else
      forget user
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
