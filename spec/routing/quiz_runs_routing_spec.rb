require "rails_helper"

RSpec.describe QuizRunsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quiz_runs").to route_to("quiz_runs#index")
    end

    it "routes to #new" do
      expect(:get => "/quiz_runs/new").to route_to("quiz_runs#new")
    end

    it "routes to #show" do
      expect(:get => "/quiz_runs/1").to route_to("quiz_runs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quiz_runs/1/edit").to route_to("quiz_runs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quiz_runs").to route_to("quiz_runs#create")
    end

    it "routes to #update" do
      expect(:put => "/quiz_runs/1").to route_to("quiz_runs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quiz_runs/1").to route_to("quiz_runs#destroy", :id => "1")
    end

  end
end
