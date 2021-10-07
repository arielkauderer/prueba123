require 'faker'

FactoryBot.define do
    factory :course do
        name {'Any name'}
        description {Faker::Lorem.sentence}
        category {'Math'}
    end
end