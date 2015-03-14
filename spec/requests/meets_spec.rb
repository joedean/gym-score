require 'rails_helper'

RSpec.describe "Meets", :type => :request do
  describe "GET /meets" do
    it "works! (now write some real specs)" do
      get meets_path
      expect(response).to have_http_status(200)
    end
  end
end
