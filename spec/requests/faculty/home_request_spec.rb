require 'rails_helper'

RSpec.describe "Faculty::Homes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/faculty/home/index"
      expect(response).to have_http_status(:success)
    end
  end

end
