class UsersController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
