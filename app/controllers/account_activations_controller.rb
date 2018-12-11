class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by email: params[:email]
    if user&.authenticated?(:activation, params[:id]) && !user.activated?
      user.activate
      log_in user
      flash[:success] = t "controller.account_activations.activated"
      redirect_to user
    else
      flash[:danger] = t "controller.account_activations.inactivated"
      redirect_to root_path
    end
  end
end
