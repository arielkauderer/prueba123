class ClassVideo < ApplicationRecord
    validates :name, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
    validates :course_id, numericality: { only_integer: true }
end
