require 'rails_helper'

RSpec.describe "Catches", type: :request do
  describe "GET /catches" do
    it "works! (now write some real specs)" do
      get catches_path
      expect(response).to have_http_status(200)
    end
  end
end
