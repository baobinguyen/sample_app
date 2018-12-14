class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build micropost_params
    if @micropost.save
      flash[:success] = t "controller.microposts.micropost_plast"
      redirect_to root_path
    else
      @feed_items = []
      render "pages/home"
    end
  end

  def destroy
    if @micropost.destroy
      flash[:success] = t "controller.microposts.message_success"
    else
      flash[:danger] = t "controller.microposts.message_error"
    end
    redirect_to request.referrer || root_path
  end

  private

  def micropost_params
    params.require(:micropost).permit :content, :picture
  end

  def correct_user
    @micropost = current_user.microposts.find_by id: params[:id]
    redirect_to root_path unless @micropost
  end
end
