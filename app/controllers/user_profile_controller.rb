class UserProfileController < ApplicationController
  def show
    @profile = UserProfile.find(params[:id])
  end
end
