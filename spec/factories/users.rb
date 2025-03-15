FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    email { Faker::Internet.unique.email }
    password { '123456' }
    password_confirmation { '123456' }
  end
end