require "rails_helper"

RSpec.describe ReferencesController, type: :routing do

  @dialect = Dialect.create(name: "Bohairic")
  @reference_1 = Reference.create(source: "Gen", volume_book: 32, line_verse: 1, dialect_id: @dialect.id)
  describe "routing" do
    it "routes to #index" do
      expect(get: "/references").to route_to("references#index")
    end

    it "routes to #show" do
      expect(get: "/references/1").to route_to("references#show", id: "1")
    end


    # it "routes to #create" do
    #   expect(post: "/references").to route_to("references#create")
    # end

    # it "routes to #update via PUT" do
    #   expect(put: "/references/1").to route_to("references#update", id: "1")
    # end

    # it "routes to #update via PATCH" do
    #   expect(patch: "/references/1").to route_to("references#update", id: "1")
    # end

    # it "routes to #destroy" do
    #   expect(delete: "/references/1").to route_to("references#destroy", id: "1")
    # end
  end
end
