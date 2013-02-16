class Admin::RegistrationController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, :only => [ :cancel ]
  prepend_before_filter :authenticate_scope!, :only => [:new, :create,:edit, :update, :destroy]
  load_and_authorize_resource :user, :parent => false
  #devise authorition
  before_filter :authenticate_user!
  layout "application"
  def new
  end
end
