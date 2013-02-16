class Admin::AccountController < ApplicationController
  load_and_authorize_resource :user, :parent => false
  #devise authorition
  before_filter :authenticate_user!
  def index
  end
end
