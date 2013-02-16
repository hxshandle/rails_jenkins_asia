require 'spec_helper'

describe Admin::AccountController do
  before :each do
    @auth_user = FactoryGirl.create(:user)
    sign_in @auth_user
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
