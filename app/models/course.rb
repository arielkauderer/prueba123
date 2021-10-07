class Course < ApplicationRecord
    validates :name, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
    validates :category, length: { minimum: 1 }
end
