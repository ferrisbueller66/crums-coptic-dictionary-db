require 'rails_helper'

RSpec.describe MeaningReference, type: :model do
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
  let(:meaning_reference){MeaningReference.create(
    meaning_id: meaning.id,
    reference_id: reference.id
  )}

  it "is valid" do
    expect(meaning_reference).to be_valid
  end

  it "belongs to a Reference" do
    expect(meaning_reference.reference_id).to eq reference.id
  end

  it "belongs to a Meaning" do
    expect(meaning_reference.meaning_id).to eq meaning.id
  end

end
