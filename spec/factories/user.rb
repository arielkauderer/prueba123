require 'faker'

FactoryBot.define do
    factory :user do
        username {Faker::Name.name}
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        email {Faker::Internet.email}
        password {Faker::Internet.password}
    end
end


