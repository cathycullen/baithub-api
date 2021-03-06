require "rails_helper"

RSpec.describe CatchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/catches").to route_to("catches#index")
    end

    it "routes to #show" do
      expect(:get => "/catches/1").to route_to("catches#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/catches").to route_to("catches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/catches/1").to route_to("catches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/catches/1").to route_to("catches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/catches/1").to route_to("catches#destroy", :id => "1")
    end
  end
end
