require 'faker'

FactoryBot.define do
    factory :class_video do
        name {'Any name'}
        description {Faker::Lorem.sentence}
        course_id {2}
    end
end