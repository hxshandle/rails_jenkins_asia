Given /^a valid account named "([^"]*)"$/ do |user|
  @user = FactoryGirl.create(:user)
end
When /^login system$/ do
  visit new_user_session_path
  fill_in(:user_name, :with => @user.name)
  fill_in(:user_password, :with => @user.password)
  click_on(:Login)
end
Given /^on "([^"]*)" page$/ do |path|
  visit eval(path)
end
When /^click on "([^"]*)"$/ do |arg|
  click_on(arg)
end
Then /^Should on "([^"]*)" page$/ do |arg|
  page.current_path.should == eval(arg)
end
When /^Fill in account info$/ do
  new_user = FactoryGirl.build(:user)
  new_user.name = 'newFish'
  new_user.email = 'newFils@example.com'
  new_user.password = 'fdsda2131'
  fill_in(:user_name,:with => new_user.name)
  fill_in(:user_password,:with => new_user.password)
  fill_in(:user_email,:with => new_user.email)
  fill_in(:user_password_confirmation,:with => new_user.password)
  select('staff',:from => :user_role)
end
Then /^Page should contain new user named "([^"]*)"$/ do |name|
  page.should have_content(name)
end
When /^Should see employee gallery$/ do
  page.should have_content('User Gallery')
end
When /^Sleep (\d+) seconds$/ do |n|
  sleep(n.to_i)
end
When /^Debug page$/ do
  save_and_open_page
end