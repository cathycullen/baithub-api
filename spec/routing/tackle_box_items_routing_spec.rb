require "rails_helper"

RSpec.describe TackleBoxItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tackle_box_items").to route_to("tackle_box_items#index")
    end

    it "routes to #show" do
      expect(:get => "/tackle_box_items/1").to route_to("tackle_box_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tackle_box_items").to route_to("tackle_box_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tackle_box_items/1").to route_to("tackle_box_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tackle_box_items/1").to route_to("tackle_box_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tackle_box_items/1").to route_to("tackle_box_items#destroy", :id => "1")
    end
  end
end
