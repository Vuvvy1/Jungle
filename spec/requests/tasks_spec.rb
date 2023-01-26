require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /about_controller.rb" do
    it "returns http success" do
      get "/tasks/about_controller.rb"
      expect(response).to have_http_status(:success)
    end
  end

end
