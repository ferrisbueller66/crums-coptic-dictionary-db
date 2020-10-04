require "rails_helper"

RSpec.describe MeaningsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/meanings").to route_to("meanings#index")
    end

    it "routes to #show" do
      expect(get: "/meanings/1").to route_to("meanings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/meanings").to route_to("meanings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/meanings/1").to route_to("meanings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/meanings/1").to route_to("meanings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/meanings/1").to route_to("meanings#destroy", id: "1")
    end
  end
end
