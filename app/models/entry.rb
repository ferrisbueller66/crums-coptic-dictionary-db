class Entry < ApplicationRecord
    belongs_to :chapter

    has_many :subordinates, class_name: "Entry", foreign_key: "head_id"
    belongs_to :head, class_name: "Entry", optional: true
    
    has_many :meanings
    has_many :entry_dialects

    validates :starting_page, :lemma, :pos, presence: true
    accepts_nested_attributes_for :chapter, reject_if: :all_blank
end
