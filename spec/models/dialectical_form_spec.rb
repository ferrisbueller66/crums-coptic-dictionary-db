require 'rails_helper'

RSpec.describe DialecticalForm, type: :model do

  let(:dialect){Dialect.create(name: "Sahidic")}
  let(:chapter){Chapter.create(title: "ⲛ")}
  
  let(:dialectical_form){
    DialecticalForm.create(dialect_id: dialect.id,
    lexeme: "ⲛⲟⲩϩⲃ")
  }

  let(:entry){
    Entry.create(chapter_id: chapter.id,
    starting_page: 243, 
    pos: "verb", 
    lemma: "ⲛⲟⲩϩⲃ")
  }

  let(:entry_dialects){
    EntryDialect.create(entry_id: entry.id,
    dialectical_form_id: dialectical_form.id)
  }

  it "is valid and contains a lexeme attribute" do
    expect(dialectical_form).to be_valid
    expect(dialectical_form.lexeme).to eq "ⲛⲟⲩϩⲃ"
  end

  it "belongs to a Dialect" do
    expect(dialectical_form.dialect_id).to eq dialect.id
  end

  it "has_many Entry_dialects" do
    expect(entry_dialects.dialectical_form_id).to eq dialectical_form.id
  end
end
