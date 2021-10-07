require "rails_helper"

RSpec.describe ClassVideo, type: :model do
    let(:class_video) {create(:class_video)}
    
    it 'is not valid whithout a name' do
        class_video.name = nil
        expect(class_video).not_to be_valid
    end

    it 'is not valid whithout a description' do
        class_video.description = nil
        expect(class_video).not_to be_valid
    end

    it 'is not valid whithout a course_id' do
        class_video.course_id = nil
        expect(class_video).not_to be_valid
    end

    it 'is not valid whith a string course_id' do
        class_video.course_id = "aaa"
        expect(class_video).not_to be_valid
    end
end