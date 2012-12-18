# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search_index do
    shout nil
    index "MyText"
  end
end
