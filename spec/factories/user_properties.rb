# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user_property do
    users { "" }
    username { "MyString" }
    propname { "MyString" }
    propvalue { "MyString" }
  end
end
