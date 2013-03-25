class UserProfileController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  def show
    user = User.find(params[:id])
    user.user_profile= UserProfile.new unless user.user_profile == nil
    @profile = user.user_profile
  end
end
