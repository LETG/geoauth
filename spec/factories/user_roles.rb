# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user_role do
    user_id { 1 }
    username { "MyString" }
    role_id { 1 }
  end
end
