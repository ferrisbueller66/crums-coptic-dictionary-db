require 'rails_helper'

RSpec.describe Meaning, type: :model do
  let(:chapter){Chapter.create(title: "ⲛ")}

  let(:entry){
    Entry.create(chapter_id: chapter.id,
    starting_page: 243, 
    pos: "verb", 
    lemma: "ⲛⲟⲩϩⲃ")
  }
  let(:meaning){
    Meaning.create( entry_id: entry.id,
    lexical_entry: "ⲛⲟⲩϩⲃ",
    translation_value: "make ready")
  }

  it "has a lexical entry" do
    expect(meaning.lexical_entry).to eq "ⲛⲟⲩϩⲃ"
  end

  it "belongs to an Entry" do
    expect(meaning.entry_id).to eq entry.id
  end

  it "saves successfully" do
    expect(meaning).to be_valid
  end

end
