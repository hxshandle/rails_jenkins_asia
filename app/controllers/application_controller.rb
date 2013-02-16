class ApplicationController < ActionController::Base
  protect_from_forgery
  # Define different layout for devise
  layout Proc.new { |controller| controller.devise_controller? ? 'devise' : 'application' }
  check_authorization :unless => :devise_controller?


end
