require 'spec_helper'

describe "Accounts Management" do
  include Devise::TestHelpers
  before :each do
    @auth_user = FactoryGirl.create(:user)
    sign_in @auth_user
    request.env['devise.mapping'] = Devise.mappings[:user]
  end
  describe "GET /admin/accounts" do
    it "Should redirect to sign page without login)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      sign_out @auth_user
      get admin_account_path
      response.status.should be(302)
    end

    it 'Should visit page with admin login user' do

    end
  end
end
