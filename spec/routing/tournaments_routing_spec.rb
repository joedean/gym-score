require "rails_helper"

RSpec.describe MeetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meets").to route_to("meets#index")
    end

    it "routes to #new" do
      expect(:get => "/meets/new").to route_to("meets#new")
    end

    it "routes to #show" do
      expect(:get => "/meets/1").to route_to("meets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/meets/1/edit").to route_to("meets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/meets").to route_to("meets#create")
    end

    it "routes to #update" do
      expect(:put => "/meets/1").to route_to("meets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meets/1").to route_to("meets#destroy", :id => "1")
    end

  end
end
