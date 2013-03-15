class UserProfileController < ApplicationController
  def show
    @profile = UserProfile.find(current_user.id)
  end
end
