# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password '!qaz2wsx'
    password_confirmation '!qaz2wsx'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
