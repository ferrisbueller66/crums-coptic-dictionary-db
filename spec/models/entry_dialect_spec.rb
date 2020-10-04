require 'rails_helper'

RSpec.describe EntryDialect, type: :model do
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

  it "is valid" do
    expect(entry_dialects).to be_valid
  end

  it "belongs to a an Entry" do
    expect(entry_dialects.entry_id).to eq entry.id
  end

  it "belongs to a Dialectical_form" do
    expect(entry_dialects.dialectical_form_id).to eq dialectical_form.id
  end

end
