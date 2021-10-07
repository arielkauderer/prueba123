require "rails_helper"

RSpec.describe Course, type: :model do
    let(:course) {create(:course)}
    
    it 'is not valid whithout a name' do
        course.name = nil
        expect(course).not_to be_valid
    end

    it 'is not valid whithout a description' do
        course.description = nil
        expect(course).not_to be_valid
    end

    it 'is not valid whithout a category' do
        course.category = nil
        expect(course).not_to be_valid
    end
end