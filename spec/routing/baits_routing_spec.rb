require "rails_helper"

RSpec.describe BaitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/baits").to route_to("baits#index")
    end

    it "routes to #show" do
      expect(:get => "/baits/1").to route_to("baits#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/baits").to route_to("baits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/baits/1").to route_to("baits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/baits/1").to route_to("baits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/baits/1").to route_to("baits#destroy", :id => "1")
    end
  end
end
