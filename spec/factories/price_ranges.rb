# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price_range do
    name "MyString"
    description "MyText"
    mix 1
    max 1
  end
end
