require "rails_helper"

class CourseTest < ActiveSupport::TestCase

    RSpec.describe "Courses", type: :request do

        describe "index" do
            it "should return a succesful request" do
                get "/courses/index"
                expect(response).to have_http_status(:ok)
            end
        end

        describe "new" do
            it "should return a succesful request" do
                get "/courses/new"
                expect(response).to have_http_status(:ok)
            end
        end

    end
end