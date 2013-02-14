class HomeController < ApplicationController
  skip_authorization_check
  before_filter :authenticate_user!
  def index
    flash[:notice] = "This is a notice"
    @user = User.all
  end
end
