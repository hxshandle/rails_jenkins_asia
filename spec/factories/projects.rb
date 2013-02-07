# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    projectNo "MyString"
    targetfob 1.5
    startDate "2013-02-07"
    endDate "2013-02-07"
    realEndDate "2013-02-07"
    isValid false
  end
end
