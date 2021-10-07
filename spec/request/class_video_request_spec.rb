require "rails_helper"

class ClassVideoTest < ActiveSupport::TestCase
    
    RSpec.describe "Class_Videos", type: :request do

        describe "index" do
            it "should return a succesful request" do
                get "/class_videos/index"
                expect(response).to have_http_status(:ok)
            end
        end

        describe "new" do
            it "should return a succesful request" do
                get "/class_videos/new"
                expect(response).to have_http_status(:ok)
            end
        end
    end
end