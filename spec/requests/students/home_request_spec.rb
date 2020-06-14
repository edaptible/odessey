require 'rails_helper'

RSpec.describe "Students::Homes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/students/home/index"
      expect(response).to have_http_status(:success)
    end
  end

end
