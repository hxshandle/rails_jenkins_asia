# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    gender "MyString"
    address "MyString"
    company "MyString"
    tel_1 "MyString"
    tel_2 "MyString"
    zip "MyString"
    locale "MyString"
  end
end
