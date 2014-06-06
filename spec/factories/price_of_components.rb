# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price_of_component do
    price_range_id 1
    price 1.5
    component "MyString"
    full_name "MyString"
  end
end
