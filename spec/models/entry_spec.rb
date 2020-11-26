require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:chapter){Chapter.create(title: "ⲛ")}
  let(:chapter2){Chapter.create(title: "ⳉ")}

  let(:entry){
    Entry.create(chapter_id: chapter.id,
    starting_page: 243, 
    pos: "verb",
    lemma: "ⲛⲟⲩϩⲃ",
    completed: false,
    )
  }

  let(:parent_entry){
    Entry.create(chapter_id: chapter2.id,
    starting_page: 541, 
    pos: "verb", 
    lemma: "ϣ-",
    completed: false,
  )
  }

  let(:child_entry){
    Entry.create(chapter_id: chapter2.id,
    starting_page: 628, 
    pos: "verb", 
    lemma: "ⳉ",
    completed: false,
  )
  }

  it "is valid with a starting page, lemma, part of speech (POS), and completion status" do
    expect(entry).to be_valid
  end

  it "belongs to a chapter" do
    expect(entry.chapter_id).to eq chapter.id
  end

  it "can be the parent (has_many) of another entry, by adding child to parent" do
    parent_entry.subordinates << child_entry
    expect(parent_entry.subordinates).to include child_entry
  end

  it "can be the child of (belong_to) another entry, by adding child to parent" do
    parent_entry.subordinates << child_entry
    expect(child_entry.head_id).to eq parent_entry.id
  end

end
