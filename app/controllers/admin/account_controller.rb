class Admin::AccountController < ApplicationController
  load_and_authorize_resource :user, :parent => false
  #devise authorition
  before_filter :authenticate_user!
  def index
    @users = User.all
    @user = User.new
  end
end
