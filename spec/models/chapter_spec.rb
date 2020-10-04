require 'rails_helper'

RSpec.describe Chapter, type: :model do

    let(:chapter){
      Chapter.create(title: "ⲛ")
    }
  
    it "contains a title" do
      expect(chapter).to be_valid
    end
  
    it "has many entries" do
      entry = Entry.create(chapter_id: chapter.id, starting_page: 243, pos: "verb", lemma: "ⲛⲟⲩϩⲃ")
      expect(chapter.entries.first).to eq(entry)
    end

end
