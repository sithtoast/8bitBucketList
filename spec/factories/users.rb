# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    bio "MyText"
    twitter_handle "MyString"
    twitch_handle "MyString"
    giant_bomb_handle "MyString"
    username "MyString"
  end
end
