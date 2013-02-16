require 'spec_helper'

describe Admin::RegistrationController do
  before :each do
    @auth_user = FactoryGirl.create(:user)
    sign_in @auth_user
    request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end

end
