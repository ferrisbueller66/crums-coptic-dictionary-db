require 'rails_helper'

RSpec.describe Reference, type: :model do
  let(:dialect){Dialect.create(name: "Sahidic")}

  let(:reference){Reference.create(
    dialect_id: dialect.id,
    source: "Dan",
    volume_book: 11,
    line_verse: 45,
    text_excerpt: '',
    translation: '',
    notes: '',
    greek_equivalent: ''

  )}

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

  let(:meaning_reference){MeaningReference.create(
    meaning_id: meaning.id,
    reference_id: reference.id
  )}

  it "belongs to a Dialect" do
    expect(reference.dialect_id).to eq dialect.id
  end

  it "has many meaning_references (joins table)" do
    reference.meaning_references << meaning_reference
    expect(reference.meaning_references.first).to eq meaning_reference
    #expect(meaning_reference.reference_id).to eq reference.id
  end

  it "is valid and contains a source and volume/book attribute" do
    expect(reference).to be_valid
    expect(reference.source).to eq "Dan"
    expect(reference.volume_book).to eq 11
  end

end


