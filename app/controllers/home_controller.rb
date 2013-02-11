class HomeController < ApplicationController
  skip_authorization_check
  before_filter :authenticate_user!
  def index
    @user = User.all
  end
end
