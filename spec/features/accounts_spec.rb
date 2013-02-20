require 'spec_helper'

describe "Accounts Management" do

  describe "GET /admin/accounts" do
    it "Should redirect to sign page without login)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit admin_account_path
      page.current_path.should == new_user_session_path
    end

    it 'Should visit page with admin login user' do
      login_as_mgrlv1
      visit admin_account_path
      page.status_code.should be(200)
    end

    describe 'In Account Manager page' do
      before :each do
        login_as_mgrlv1
        visit admin_account_path
      end

      it 'Should have title' do
        find('.brand span').text.should == "Account Management"
      end
    end
  end
end
