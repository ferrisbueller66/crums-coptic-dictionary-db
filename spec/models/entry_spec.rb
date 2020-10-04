require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:chapter){Chapter.create(title: "ⲛ")}
  let(:entry){
    Entry.create(chapter_id: chapter.id,
    starting_page: 243, 
    pos: "verb", 
    lemma: "ⲛⲟⲩϩⲃ")
  }

  it "is valid with a starting page, lemma, and part of speech (POS)" do
    expect(entry).to be_valid
  end

  it "belongs to a chapter" do
    expect(entry.chapter_id).to eq chapter.id
  end
end
