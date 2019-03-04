require 'rails_helper'

RSpec.describe "Baits", type: :request do
  describe "GET /baits" do
    it "works! (now write some real specs)" do
      get baits_path
      expect(response).to have_http_status(200)
    end
  end
end
