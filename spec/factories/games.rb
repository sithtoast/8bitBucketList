# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    name "MyString"
    esrb "MyString"
    rating 1
    userrating 1
    developer "MyString"
    publisher "MyString"
  end
end
