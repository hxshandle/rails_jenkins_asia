class HomeController < ApplicationController
  skip_authorization_check
  before_filter :authenticate_user!
  def index
    flash.now[:notice] = "This is a notice"
    flash.now[:success] = "This is a success"
    flash.now[:error] = "This is a error"
    flash.now[:info] = "This is a info"
    @user = User.all
  end
end
