class Admin::AccountController < ApplicationController
  load_and_authorize_resource :user, :parent => false
  #devise authorition
  before_filter :authenticate_user!

  def index
    @users = User.all
    @user = User.new
  end

  def user_gallery
    @users = User.all
    respond_to do |format|
      format.html do
        if request.xhr?
          render :layout => false
        end
      end
      format.json { render json: @users }
    end
  end
end
