require 'rails_helper'

RSpec.describe Dialect, type: :model do
  let(:dialect){Dialect.create(name: "Sahidic")}
  let(:dialectical_form){
    DialecticalForm.create(dialect_id: dialect.id,
    lexeme: "ⲛⲟⲩϩⲃ")
  }

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

  it "is valid and contains a name attribute" do
    expect(dialect).to be_valid
    expect(dialect.name).to eq "Sahidic"
  end

  it "has_many dialectical_forms" do
    expect(dialectical_form.dialect_id).to eq dialect.id
  end

  it "has_many references" do
    expect(reference.dialect_id).to eq dialect.id
  end

end
