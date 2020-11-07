require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:chapter){Chapter.create(title: "ⲛ")}
  let(:chapter2){Chapter.create(title: "ⳉ")}

  let(:entry){
    Entry.create(chapter_id: chapter.id,
    starting_page: 243, 
    pos: "verb",
    lemma: "ⲛⲟⲩϩⲃ")
  }

  let(:parent_entry){
    Entry.create(chapter_id: chapter2.id,
    starting_page: 541, 
    pos: "verb", 
    lemma: "ϣ-")
  }

  let(:child_entry){
    Entry.create(chapter_id: chapter2.id,
    starting_page: 628, 
    pos: "verb", 
    lemma: "ⳉ",
    cross_reference: parent_entry.id)
  }

  it "is valid with a starting page, lemma, and part of speech (POS)" do
    expect(entry).to be_valid
  end

  it "belongs to a chapter" do
    expect(entry.chapter_id).to eq chapter.id
  end

  it "can reference another entry" do
    expect(entry.chapter_id).to eq chapter.id
  end
end
