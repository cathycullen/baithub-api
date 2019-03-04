require 'rails_helper'

RSpec.describe "TackleBoxItems", type: :request do
  describe "GET /tackle_box_items" do
    it "works! (now write some real specs)" do
      get tackle_box_items_path
      expect(response).to have_http_status(200)
    end
  end
end
